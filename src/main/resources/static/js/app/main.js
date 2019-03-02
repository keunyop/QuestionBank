var main_div =  $("#main-div");

var main = {
    init : function () {
        var _this = this;
        var _btn_take_the_quiz = $('#btn-take-the-quiz');

        // _this.disqus();

        _btn_take_the_quiz.on('click', function () {
            var testId = $("input[name='testRadio']:checked").val();
            _this.openQuiz(testId);
        });

        // Radio button change event
        $('input:radio[name="testRadio"]').on('change', function() {
            if (_btn_take_the_quiz.prop("disabled")) {
                _btn_take_the_quiz.removeClass('btn-secondary').addClass('btn-primary');
                _btn_take_the_quiz.prop("disabled", false);          
            }           
        });
    },
    openQuiz : function (testId) {
        window.location = '/test?testId=' + testId;
    }
};

main.init();