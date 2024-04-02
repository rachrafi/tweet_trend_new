	FROM openjdk:8
	ADD jarstaging/com/valaxy/demo-workshop/2.1.6/demo-workshop-2.1.6.jar demo-workshop.jar
	ENTRYPOINT ["java", "-jar", "demo-workshop.jar"]

