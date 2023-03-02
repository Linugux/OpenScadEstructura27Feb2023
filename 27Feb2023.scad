color([1,1,9]) 
translate([-20,-300,-2]) 
cube([800,1200,1]); 

color([0,.7,0]) 
translate([780,-300,-2]) 
cube([600,1200,1]); 

for (y=[0:70:360]){ 
	color([1,1,1]) 
	translate([900+y,20,0]) 
	cube([30,50,5]); 

	color([1,1,1]) 
	translate([900+y,100,0]) 
	cube([30,50,5]); 

	color([1,1,1]) 
	translate([900+y,200,0]) 
	cube([30,70,5]); 
	} 
	
	//Outdoor front window 
	color([1,1,1]) 
	translate([780,0,0]) 
	cube([100,280,10]); 

module casa (){ 
	difference () {
		translate([800-20,280,0]) 
		cube([100,448,220]); 
		
		//
		color([0,1,1])
		translate([770,290,6]) 
		cube([100,450,220]); 
		
		//Outdoor Behia
		color([0,1,1])
		translate([867,400,2]) 
		cube([20,180,200]); 
		} 
	
		difference(){ 
			translate([193,0,0]) 
			cube([600,730,220]); 

			//Fonde home
			color([0,1,1])
			translate([195,5,5]) 
			cube([600-10,740,220]); 
			
			//Outdoor front Door 
			color([0,1,1])
			translate([800-20,195,2]) 
			cube([20,80,200]); 

			//Outdoor front
			color([0,1,1]) 
			translate([800-20,289,0]) 
			cube([22,442,222]); 
			
			//Base Laddder
			translate([670,2,2]) 
			%cube([10,280,120]); 
			
			for(x=[0:25:200]){ 
				color([1,1,1]) 
				translate([550,260-x,x+2])
				%cube([120,20,20]); 
				} 
				
				//Outdoor Behia 
				translate([190,80,2]) 
				cube([10,80,200]); 
	
				//Outdoor Behia 
				translate([190,180,100]) 
				cube([10,100,100]); 

				//Outdoor Behia 
				translate([190,400,2]) 
				cube([10,180,200]); 

				//Chicke 
				translate([200,2,2]) 
				%cube([350,300,220]); } 
				
				//PLante High 
				translate([193,0,220]) 
				cube([700,730,220]); 
} 

module estructura () { 
	for (z=[0:82:750]) 
		color([5,2,0]) 
		translate([0,0+z,290]) 
		cube([193,3.6,2.54]); 
	
		color([5,2,0]) 
		translate([0,0,290]) 
		cube([3.6,740,2.54]); 
		
		color([5,2,0]) 
		translate([193,0,290]) 
		cube([3.6,740,2.54]); 
	
		//Policarbonato 	
		translate([0,0,291]) 
		%cube([193,415,1]); 
	} 



module wall (){ 
	translate([-22,0,0])
	#cube([10,730,450]); 	
	
	translate([-10,0,260]) 
	%cube([30,730,20]);
 
	translate([-10,0,0]) 
	%cube([10,730,260]); 
	
	translate([0,0,0]) 	
	%cube([200,10,280]); 
	
	translate([0,730,0]) 
	%cube([200,10,280]); 
} 

casa(); 
wall(); 
estructura();