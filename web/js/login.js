$(function () {
    $('#formLogin').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            userName: {
                message: 'user name fail',
                verbose: false,
                validators: {
                    notEmpty: {
                        message: 'user name should not be empty'
                    }
                }
            },

            pass: {
                message: 'password fail',
                validators: {
                    notEmpty: {
                        message: 'password should not be empty'
                    }
                }
            }


        }
    });


});
