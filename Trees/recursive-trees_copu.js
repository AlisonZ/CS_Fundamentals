function TreeNode(value) {
    this.data = value;
    this.right = null;
    this.left = null;
};

function Tree() {
    this.root = null;
};

Tree.prototype.insert = function(value){

    if (this.root === null) {
        this.root = new TreeNode(value)
        return this.root
    };

    var current = this.root;

    return insertHelper(current, value);

};

function insertHelper(current, value) {
    if (value > current.data && current.right) {
        return insertHelper(current.right, value)
    } else if (value > current.data && !current.right) {
        return current.right = new TreeNode(value);
    };

    if (value < current.data && current.left){
        return insertHelper(current.left, value)
    } else if (value < current.data && !current.left) {
        return current.left = new TreeNode(value);
    };

};

Tree.prototype.search = function(value) {
    if (this.root) === null {
        return false
    };

    if (value === current.data) {
        return true
    };

    return searchHelper(current, value);
};


function searchHelper(current, value){
    if (value > current.data && current.right) {
        return searchHelper(current.right, data)
    } else if (value > current.data && !current.right) {
        return false
    };

    if (value < current.data && current.left) {
        return searchHelper(current.left, data)
    } else if (value < current.data && !current.left) {
        return false
    };
};

var myTree = new Tree();
myTree.insert(4);
myTree.insert(9);
myTree.insert(2);
myTree.insert(16);

console.log(myTree);
