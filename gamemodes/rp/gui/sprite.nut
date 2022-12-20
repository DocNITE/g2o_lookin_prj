guiScale <- 1;

class Sprite extends Base {
    # private:
    m_textures = [];
    m_draws    = [];
    m_pos      = -1;
    # mutable:
    visible     = false;

    size        = -1;
    position    = -1;
    scale       = 1;

    anchor = [LEFT, TOP]; // [horizontal, vertical]

    image   = null;
    text    = null;
    font    = "Font_Old_10_White_Hi.tga";

    textPadding = 4;

    palete = [255, 255, 255, 255];

    /**
     * Constructor
     */
    constructor(x, y, _width = 256, _height = 256, _image = null, _text = null, _parent = null) {
        if (x == null || y == null) return;
        //base
        base.constructor(_parent);
        // position on screen
        if (_parent == null) {
            m_pos = {x = x, y = y};
        } else {
            m_pos = {x = parent.m_pos.x, y = parent.m_pos.y}
        }
        position = {x = x, y = y};
        size = {width = _width, height = _height};
        // texture
        image = _image;
        // add text
        if (_text != null) {
            if (typeof _text == "string") {
                text.append(_text);
            } else if (typeof _text == "array") {
                foreach (line in _text) {
                    text.append(line);
                }
            }
        }

        m_textures = [];
        m_draws    = [];
    }
    /**
     * Set new position
     * @param {int} x horizontal coord
     * @param {int} y vertical coord
     */
    function setPosition(x, y) {
        position.x = x;
        position.y = y;

        blit(); //repos();
    }
    /**
     * Set new position
     * @param {int} x horizontal coord
     * @param {int} y vertical coord
     */
    function setText(str) {
        //size.width*guiScale*scale
        text = [];

        local _winWidth = size.width*guiScale*scale + textPadding;
        local txt = split(str, " ");

        local _drawText = "";
        local _drawShit = Draw(0, 0, "");
        _drawShit.setScale(1*scale*guiScale, 1*scale*guiScale);
        _drawShit.font = font;
        _drawShit.visible = false;

        //local _inProcess = false;
        foreach (elem in txt) {
            _drawShit.text = _drawShit.text + elem + " ";

            if (_drawShit.widthPx <= _winWidth) {
                _drawText = _drawText + elem + " ";

                //_inProcess = true;
            } else {
                text.push(_drawText);

                _drawText = elem + " ";
                _drawShit.text = elem + " ";

                //_inProcess = false;
            }
        }
        text.push(_drawText);

        blit(); //repos();
    }
    function parse(text, colorParserEnabled = true)
	{
		local info = []

		local expression = "\\n"
		expression += (colorParserEnabled) ? "|" + @"\[#[0-9_a-f_A-F]{6,}]" : ""

		local regex = regexp(expression)

		local currentPosition = 0
		local currentColor = m_color

		//m_text = "" !!!!!!!!!!!!!

		local result = null
		while (result = regex.search(text, currentPosition))
		{
			local isEOLFound = (result.end - result.begin == 1)
			local endPosition = (isEOLFound) ? result.end - 1 : result.begin

			local slicedText = text.slice(currentPosition, endPosition)

			if (slicedText != "" || isEOLFound)
			{
				info.push({text = slicedText, color = currentColor, newLine = isEOLFound})
				//m_text += slicedText !!!!!!!!!!!!!
			}

			currentPosition = result.end
			currentColor = (isEOLFound) ? currentColor : hexToRgb(text.slice(result.begin + 2, result.end - 1))
		}

		local slicedText = text.slice(currentPosition, text.len())

		//m_text += slicedText !!!!!!!!!!!!!
		info.push({text = slicedText, color = currentColor, newLine = false})

		if (info.len())
			return info

		return null
	}
    /**
     * Update drawable element
     */
    function blit() {
        // Clear old data
        debug("(Class|Sprite): Blit process started...")
        if (m_textures != null && m_textures.len() > 0) {
            for(local i = 0; i < m_textures.len(); i++) {
                m_textures[i].visible = false;
                m_textures.remove(i);
            }
        }
        if (m_draws != null && m_draws.len() > 0) {
            for(local i = 0; i < m_draws.len(); i++) {
                m_draws[i].visible = false;
                m_draws.remove(i);
            }
        }
        debug("(Class|Sprite): Remove old ui elements...")
        // If sprite is hide
        //if (!visible) return;

        // Position context (?)
        local pos = _genPosition();
        debug("(Class|Sprite): Generate position...")
        // For childs/parent system
        if (parent == null) {
            m_pos.x = pos.x;
            m_pos.y = pos.y;
        } else {
            m_pos.x = parent.m_pos.x + pos.x;
            m_pos.y = parent.m_pos.y + pos.y;
        }

        // Make new texture
        if (image) {
            local _Texture = Texture(0, 0,anx(size.width*guiScale*scale), any(size.height*guiScale*scale), image)
            _Texture.setPositionPx(m_pos.x, m_pos.y);
            _Texture.visible = visible;
            _Texture.setColor(palete[0], palete[1], palete[2]);
            _Texture.alpha = palete[3];
            m_textures.push(_Texture);
        }
        debug("(Class|Sprite): Make background...")
        // Make new text
        if (text) {
            //local _pading = 1;
            local _oldY = m_pos.y-textPadding;
            foreach (line in text) {
                local _Draw = Draw(0,0,line);
                _Draw.font = font;
                _Draw.setScale(1*scale*guiScale, 1*scale*guiScale);
                _Draw.setPositionPx(m_pos.x+textPadding, _oldY + textPadding);
                _oldY = _oldY + (_Draw.heightPx);
                _Draw.visible = visible;
                _Draw.setColor(palete[0], palete[1], palete[2]);
                //_Draw.alpha = palete[3];
                m_draws.push(_Draw);

                //_pading++;
            }
        }
        debug("(Class|Sprite): Make text...")
        // For childs
        if (childs.len() > 0) {
            foreach (obj in childs) {
                obj.blit();
            }
        }
        debug("(Class|Sprite): Blit is done!")
    }
    /**
     * Update position
     */
    function repos() {
        local pos = _genPosition();
        // For childs/parent system
        if (parent == null) {
            m_pos.x = pos.x;
            m_pos.y = pos.y;
        } else {
            m_pos.x = parent.m_pos.x + pos.x;
            m_pos.y = parent.m_pos.y + pos.y;
        }
        // Reposition exist's elements
        if (m_textures != null && m_textures.len() > 0) {
            for(local i = 0; i < m_textures.len(); i++) {
                m_textures[i].setPositionPx(m_pos.x, m_pos.y);
            }
        }
        if (m_draws != null && m_draws.len() > 0) {
            local _oldY = m_pos.y+textPadding;
            //local _pading = 1;
            for(local i = 0; i < m_draws.len(); i++) {
                local _Draw = m_draws[i];
                _Draw.setPositionPx(0, 0);
                _Draw.font = font;
                _Draw.setScale(1*scale*guiScale, 1*scale*guiScale);
                _Draw.setPositionPx(m_pos.x+textPadding, _oldY + textPadding);
                _oldY = _oldY + (_Draw.heightPx*_pading);

                //_pading++;
            }
        }
        // For childs
        if (childs.len() > 0) {
            foreach (obj in childs) {
                obj.repos();
            }
        }
    }
    #private
    function _genPosition() {
        // Position context (?)
        debug("(Class#private|Sprite): Generation position started...");
        local pos = {x = 0, y = 0};
        if (anchor[HORIZONTAL] == LEFT) {
            if (parent == null) {
                pos = {x = position.x, y = pos.y};
            } else {
                pos = {x = parent.m_pos.x + position.x, y = pos.y};
            }
        } else if (anchor[HORIZONTAL] == RIGHT) {
            local screen = getResolution();
            if (parent == null) {
                pos = {x = screen.x - position.x, y = pos.y};
            } else {
                pos = {
                    x = parent.m_pos.x + (parent.size.width*guiScale*parent.scale) - position.x,
                    y = pos.y
                };
            }
        } // VERTICAL
        debug("(Class#private|Sprite): Set horizontal pos...");
        if (anchor[VERTICAL] == TOP) {
            if (parent == null) {
                pos = {x = pos.x, y = position.y};
            } else {
                pos = {x = pos.x, y = parent.m_pos.y + position.y};
            }
        } else if (anchor[VERTICAL] == BOTTOM) {
            local screen = getResolution();
            if (parent == null) {
                pos = {x = pos.x, y = screen.y - position.y};
            } else {
                pos = {
                    x = pos.x,
                    y = parent.m_pos.y + (parent.size.height*guiScale*parent.scale) - position.y
                };
            }
        }
        debug("(Class#private|Sprite): Set vertical pos...");
        return pos;
    }
}

local tSpr = Sprite(200, 200, 200, 300, "DLG_CONVERSATION");
addEventHandler("onInit", function () {
    tSpr.visible = true;
    tSpr.setText("mmm marganec))) YEAHH BOI FUCK ME FUFKCM E. Okay mister whity, ima realy wrong. So, maybe try again?");
    tSpr.blit();
})

addEventHandler("onRender", function () {
    tSpr.blit();
})