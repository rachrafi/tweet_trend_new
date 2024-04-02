	FROM openjdk:8
	ADD jarstaging/com/valaxy/demo-workshop/2.1.7/demo-workshop-2.1.7.jar demo-workshop.jar
	ENTRYPOINT ["java", "-jar", "demo-workshop.jar"]

