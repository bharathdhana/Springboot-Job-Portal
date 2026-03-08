package com.bharath.JobApp.aop;


import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoggingAspect {

    private static final Logger LOGGER = LoggerFactory.getLogger(LoggingAspect.class);

    // before logging
    @Before("execution(* com.bharath.JobApp.service.JobService.*(..))")
    public void logMethodCall(JoinPoint joinPoint) {
        LOGGER.info("Log Called " + joinPoint.getSignature().getName());
    }

    // after logging
    @After("execution(* com.bharath.JobApp.service.JobService.updateJob(..))")
    public void logAfterMethodCall(JoinPoint joinPoint) {
        LOGGER.info("Log After Called " +  joinPoint.getSignature().getName());
    }

    @AfterThrowing("execution(* com.bharath.JobApp.service.JobService.addJob(..))")
    public void logAfterThrowingMethodCall(JoinPoint joinPoint) {
        LOGGER.info("Log After Throwing Method Call " +   joinPoint.getSignature().getName());
    }

    @AfterReturning("execution(* com.bharath.JobApp.service.JobService.addJob(..))")
    public void logAfterReturningMethodCall(JoinPoint joinPoint) {
        LOGGER.info("Log After Returning Method Call " +   joinPoint.getSignature().getName());
    }
}
