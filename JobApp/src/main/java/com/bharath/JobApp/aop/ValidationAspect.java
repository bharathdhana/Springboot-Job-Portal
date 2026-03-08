package com.bharath.JobApp.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class ValidationAspect {
    private static final Logger LOGGER = LoggerFactory.getLogger(PerformanceMonitorAspect.class);

    @Around("execution(* com.bharath.JobApp.service.JobService.getJob(..)) && args(PostId)" )
    public Object validateAndUpdate(ProceedingJoinPoint joinPoint, int PostId) throws Throwable {
        if(PostId < 0) {
            LOGGER.info(joinPoint.getSignature().getName());
            PostId = -PostId;
        }
        Object obj = joinPoint.proceed(new Object[]{PostId});

        return obj;
    }
}
