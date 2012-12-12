// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
	$('#new_weight').validate({
		rules: {
			'weight[weight]': {required: true},
			'weight[waist]': {required: true},
			'weight[neck]': {required: true},
			'weight[hip]': {required: true},
			'weight[left_arm]': {required: true},
			'weight[right_arm]': {required: true},
			'weight[left_leg]': {required: true},
			'weight[right_leg]': {required: true}
		},
		messages:{
			'weight[weight]': "Weight is required",
			'weight[waist]': "Waist is required",
			'weight[neck]': "Neck is required",
			'weight[hip]': "Hip is required",
			'weight[left_arm]': "Left Arm is required. If you dont know, put zero.",
			'weight[right_arm]': "Right Arm is required. If you dont know, put zero.",
			'weight[left_leg]': "Left Leg is required. If you dont know, put zero.",
			'weight[right_leg]': "Right Leg is required. If you dont know, put zero."
			
		}
	});
});