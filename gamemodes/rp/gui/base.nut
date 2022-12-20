class Base {
    # mutable:
    parent = null;
    childs = [];

    constructor(_parent = null, _childs = []) {
        parent = _parent;
        childs = _childs;
    }

    function setParent(obj) {
        if (parent != null) {
            parent.removeChild(this);
        }
        parent = obj;
    }

    function addChild(obj) {
        if (obj == null) return;
        // rewrite child parent & push
        obj.setParent(this);
        childs.push(obj);
    }

    function removeChild(obj = null) {
        if (childs.len() == 0) return;
        // (?)
        if (obj == null) {
            local _id = childs.len()-1;
            childs[_id].setParent(null);
            childs.remove(_id);
        } else {
            for(local i = 0; i < childs.len(); i++) {
                if (childs[i] == obj) {
                    childs[i].setParent(null);
                    childs.remove(i);
                }
            }
        }
    }
}