BEGIN{
    score = 79
		if(score>90){
			print "great!"
			print "=================="
		}
		else if (score>80){
			print "good!"
		}
		else if (score>=60){
			print "ok!"
		}else{
			print "bad!"
		}
		
		msg = score>60?"successful":"failure"
		print msg
}
