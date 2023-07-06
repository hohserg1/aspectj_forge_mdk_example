package com.example.examplemod;

import com.google.common.collect.HashBiMap;

public aspect TestAspect2 {
    pointcut inverse(HashBiMap i):target(i) && execution(public com.google.common.collect.BiMap inverse());

    before(HashBiMap i): inverse(i){
        System.out.println("HashBiMap Aspect");
    }
}
