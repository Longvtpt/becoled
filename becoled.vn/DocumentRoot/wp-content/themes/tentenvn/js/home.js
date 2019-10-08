function _validateEmail(email) {
    if (email.length > 150) {
        return false;
    }
    var re = /^[0-9a-zA-Z._%+-]+@[-0-9a-zA-Z.+_]+\.[a-zA-Z]{2,4}$/;
    return re.test(email);
}
function _validateNum(_val) {
    var re = /^[+-]?\d+(\.\d+)?([eE][+-]?\d+)?$/;
    return re.test(_val);
}
function _validateZipcode(_val) {
    var re = /^(\d{5}|\d{5}-\d{4})$/;
    return re.test(_val);
}
function _validatePhone(_val) {
    var re = /^\(?(\d{3,5})\)?[-. ]?(\d{3,5})[-. ]?(\d{4,10})$/;
    return re.test(_val);
}
function _validateWebUrl(_val) {
    var re = /^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/|www\.|\w)[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/;
    return re.test(_val);
}
function _validateDateTime(_val) {
    var re = /^((\d{4}[\/-]\d{2}[\/-]\d{2})|(\d{4}[\/-]\d{2}[\/-]\d{2}( )?(\d{2}:\d{2}(:\d{2})?)?[ ]?(AM|PM|am|pm|aM|Am|Pm|mP)?( )?))$/;
    return re.test(_val);
} 