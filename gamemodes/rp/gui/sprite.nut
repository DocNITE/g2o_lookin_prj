guiScale <- 1;

class RGBA {
    # mutable:
    r = 255;
    g = 255;
    b = 255;
    alpha = 255;

    constructor(_r, _g, _b, _alpha = 255) {
        r = _r;
        g = _g;
        b = _b;
        alpha = _alpha;
    }
}

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

    color = RGBA(255, 255, 255);
    textColor = RGBA(255, 255, 255);

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
        local txt = parse(str); //split(str, " ");

        //local _drawText = "";
        local _drawShit = Draw(0, 0, "");

        _drawShit.setScale(1*scale*guiScale, 1*scale*guiScale);
        _drawShit.font = font;
        _drawShit.visible = false;

        //local _inProcess = false;
        foreach (elem in txt) {
            _drawShit.text = _drawShit.text + elem.text// + " ";

            if (_drawShit.widthPx <= _winWidth-textPadding) {
                //_drawText = _drawText + elem.text// + " ";

                text.push({text = elem.text, color = elem.color, newLine = false});
                //_inProcess = true;
            } else {
                text.push({text = elem.text, color = elem.color, newLine = true});

                //_drawText = elem.text// + " ";
                _drawShit.text = elem.text// + " ";

                //_inProcess = false;
            }
        }
        //text.push(_drawText);

        blit(); //repos();
    }
    /**
     * Set new color
     * @param {RGBA} color
     */
    function setColor(clr, g = null, b = null, alpha = null) {
        if (!clr) return;
        // So, check if we want set RGBA class for color
        if (clr instanceof RGBA) {
            color = clr;
        } else {
            color = RGBA(clr, g, b, alpha);
        }
        // Update
        blit();
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
            _Texture.setColor(color.r, color.g, color.b);
            _Texture.alpha = color.alpha;
            m_textures.push(_Texture);
        }
        debug("(Class|Sprite): Make background...")
        // Make new text
        if (text) {
            //local _pading = 1;
            local _oldY = m_pos.y-textPadding;
            local _oldDraw = null;
            local _oldX = m_pos.x+textPadding;
            foreach (line in text) {
                local _Draw = Draw(0,0,line.text);
                // Remembet that
                if (_oldDraw) {
                    _oldX = _oldX + _oldDraw.widthPx;
                }
                _oldDraw = _Draw;
                // other logic
                if (line.newLine) {
                    _oldY = _oldY + (_Draw.heightPx);
                    _oldX = m_pos.x+textPadding;
                    //_oldDraw = null;
                }
                _Draw.font = font;
                _Draw.setScale(1*scale*guiScale, 1*scale*guiScale);
                _Draw.setPositionPx(_oldX, _oldY + textPadding);
                _Draw.visible = visible;
                _Draw.setColor(line.color.r, line.color.g, line.color.b);
                _Draw.alpha = textColor.alpha;
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
    // by Patrix code
    function parse(text, colorParserEnabled = true) {
        debug("(Class|Sprite): Parsing text start!")
		local info = []

		local expression = "\\n"
		expression += (colorParserEnabled) ? "|" + @"\[#[0-9_a-f_A-F]{6,}]" : ""

		local regex = regexp(expression)

		local currentPosition = 0
		local currentColor = {r = textColor.r, g = textColor.g, b = textColor.b};

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

local tSpr = Sprite(200, 200, 200, 300, "WHITE");
addEventHandler("onInit", function () {
    tSpr.visible = true;
    //tSpr.setText("mmm marganec))) YEAHH BOI FUCK ME FUFKCM E. Okay mister whity, ima realy wrong. So, maybe try again?");
    //[#F60005]
    tSpr.setText("[#FFFFFF]dasdasdsd [#FFFFFF]ad [#FFFFFF]auishdoajs [#FFFFFF]doajsd [#FFFFFF]jasoi [#FFFFFF]djaoijd oias jdoiasjd jas djoaisj doias oias js");
    tSpr.setColor(RGBA(0,0,0,190));
    tSpr.blit();
})

addEventHandler("onRender", function () {
    tSpr.blit();
})