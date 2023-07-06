package com.example.examplemod;

import net.minecraft.client.Minecraft;

public aspect TestAspect {
    pointcut bruh(Minecraft mc): target(mc) && execution(public void resize(..));

    before(Minecraft mc): bruh(mc){
        System.out.println("TestAspect#bruh");
    }
}
