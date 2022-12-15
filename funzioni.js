$(document).ready(function() {
    var butt1=$('input:checked[name=butt_uno]').val();
    var butt1=$('input:checked[name=butt_due]').val();

    $('input[name=butt_uno]').click( function(){
        butt1 = $('input:checked[name=butt_uno]').val();
        if (butt1 == "fronte"){
            $('#back_177').css("display","none");
            $('#front_177').css("display","block");
            $('#testo_1').css("display","block");
            $('#info_177').css("display","none");
        }else if (butt1 == "retro"){
            $('#back_177').css("display","block");
            $('#front_177').css("display","none");
        } else {
            $('#back_177').css("display","none");
            $('#front_177').css("display","block");
            $('#testo_1').css("display","none");
            $('#info_177').css("display","block");
        }
    });

    $('input[name=butt_due]').click( function(){
        butt2 = $('input:checked[name=butt_due]').val();
        if (butt2 == "fronte"){
            $('#back_219').css("display","none");
            $('#front_219').css("display","block");
            $('#testo_3').css("display","block");
            $('#info_219').css("display","none");
        }else if (butt2 == "retro"){
            $('#back_219').css("display","block");
            $('#front_219').css("display","none");
        } else {
            $('#back_219').css("display","none");
            $('#front_219').css("display","block");
            $('#testo_3').css("display","none");
            $('#info_219').css("display","block");
        }
    });
});
