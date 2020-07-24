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
                message: '用户名验证失败',
                verbose: false,
                validators: {
                    notEmpty: {
                        message: '用户名不能为空'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: '用户名只能包含大写、小写英文字母、数字'
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
                        message: '邮箱地址不能为空'
                    },
                    regexp: {
                        regexp: /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/,
                        message: '邮箱格式错误'
                    }
                }
            },
            pass: {
                verbose: false,
                message: '密码验证失败',
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: '密码只能包含大写、小写英文字母、数字和下划线'
                    },
                    stringLength: {
                        min: 6,
                        max: 12,
                        message: '弱密码！请保证在6到12位之间'
                    },
                    identical: {
                        field: 'passwordConfirm',
                        message: '用户新密码与确认密码不一致！请修改！'
                    }
                }
            },
            passwordConfirm: {
                verbose: false,
                message: '密码验证失败',
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: '密码只能包含大写、小写英文字母、数字和下划线'
                    },
                    stringLength: {
                        min: 6,
                        max: 12,
                        message: '弱密码！请保证在6到12位之间'
                    },
                    identical: {
                        field: 'pass',
                        message: '密码不一致！'
                    }
                }
            }
        }
    });
})
