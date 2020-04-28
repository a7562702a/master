/**
 * 
 */

$(function(){
	
	var total = 0;
	
//	$('select').on("change", function(){
//		var parea = $(this).parent().parent().prev().find('.price_area');
//		var total = $(this).parent().find('.total');
//		price = parea.text();
//		total.html(Number(price) * this.value); 
//	});
	
	$('#allcheck').change(function(){
		
		if($('#allcheck').is(":checked")){
			$('input:checkbox[name="select"]').each(function(){
				this.checked = true;
				total += Number($(this).parent().parent().next().find('.total').text());
			});
			$('#sum').html(total);
		}else{
			$('input:checkbox[name="select"]').each(function(){
				this.checked = false;
				total = 0;
			});
			$('#sum').html(total);
		}
	});
	
	$('input:checkbox[name="select"]').on("change", function(){
		
		if($(this).is(":checked")){
			this.checked = true;
			total += Number($(this).parent().parent().next().find('.total').text());
			
			$('#sum').html(total);
		}else{
			this.checked = false;
			total -= Number($(this).parent().parent().next().find('.total').text());
			$('#sum').html(total);
		}
	});
	
});

function relly(){
    $('#sum').html(0);
	
}