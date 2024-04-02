	FROM openjdk:8
	ADD jarstaging/com/valaxy/demo-workshop/2.1.10/demo-workshop-2.1.10.jar demo-workshop.jar
	ENTRYPOINT ["java", "-jar", "demo-workshop.jar"]

