package com.example.examplemod;

import com.google.common.collect.HashBiMap;
import net.minecraft.client.Minecraft;

public aspect TestAspect {
    pointcut bruh(Minecraft mc): target(mc) && execution(public void resize(..));

    before(Minecraft mc): bruh(mc){
        System.out.println("TestAspect#bruh");
    }

    pointcut test(ExampleMod mod): target(mod) && execution(public void test1());

    before(ExampleMod mod): test(mod){
        System.out.println("TestAspect#test");
    }

    pointcut inverse(HashBiMap i):target(i) && execution(public com.google.common.collect.BiMap inverse());

    before(HashBiMap i): inverse(i){
        System.out.println("HashBiMap Aspect");
    }
}
