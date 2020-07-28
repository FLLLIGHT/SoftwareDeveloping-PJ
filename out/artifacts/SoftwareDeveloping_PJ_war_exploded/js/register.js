$(function () {
    $('#formRegister').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            userName: {
                message: 'username fail',
                verbose: false,
                validators: {
                    notEmpty: {
                        message: 'user name should not be empty'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: 'user name should only contains characters and numbers'
                    },
                    stringLength: {
                        min: 4,
                        max: 15,
                        message: 'username should between 4 to 15'
                    }
                }
            },
            email: {
                verbose: false,
                validators: {
                    notEmpty: {
                        message: 'email should not be empty'
                    },
                    regexp: {
                        regexp: /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/,
                        message: 'email format error'
                    }
                }
            },
            pass: {
                verbose: false,
                message: 'password fail',
                validators: {
                    notEmpty: {
                        message: 'password should not be empty, please enter your password'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: 'password should only contains characters, numbers and _'
                    },
                    stringLength: {
                        min: 6,
                        max: 12,
                        message: '<b>weak!</b> password should between 6 to 12 characters'
                    },
                    identical: {
                        field: 'passwordConfirm',
                        message: 'password doesn\'t agree with password confirm'
                    }
                }
            },
            passwordConfirm: {
                verbose: false,
                message: 'password fail',
                validators: {
                    notEmpty: {
                        message: 'password should not be empty, please enter your password'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: 'password should only contains characters, numbers and _'
                    },
                    stringLength: {
                        min: 6,
                        max: 12,
                        message: '<b>weak!</b> password should between 6 to 12 characters'
                    },
                    identical: {
                        field: 'pass',
                        message: 'password confirm doesn\'t agree with password'
                    }
                }
            }
        }
    });
})
