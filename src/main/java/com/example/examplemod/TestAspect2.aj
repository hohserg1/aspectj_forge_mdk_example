package com.example.examplemod;

import com.google.common.collect.HashBiMap;

public aspect TestAspect2 {
    pointcut some(HashBiMap i):target(i) && execution(public com.google.common.collect.BiMap inverse());

    before(HashBiMap i): some(i){
        System.out.println("HashBiMap Aspect");
    }
}
