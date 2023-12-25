// 基礎部分
module plank(rotate_x, rotate_y, rotate_z){

	rotate([rotate_x, rotate_y, rotate_z]){

		// 厚みを10mmに設定
		linear_extrude(10){

			//時計回り
			polygon(points=[[0, 0], [0, 10], [8, 40], [13, 40], [13, 10], [28, 10], [28, 40], [33, 40], [40, 10], [40, 0]]); 

		}
	
	}

}

// 1枚目
plank(90, 0, 0);

// y軸方向に100mm移動
translate([0, 100, 0]){

	// 2枚目
	plank(90, 0, 0);

}

// x軸方向に13mm移動
translate([13, 0, 0]){

	cube([15, 100, 10]);

}
