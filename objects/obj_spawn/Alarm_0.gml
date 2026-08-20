var lado = irandom(2);

if (lado == 0)
{
    var newObj = instance_create_layer(-50, -100, "spawner", obj_clt);

    newObj.image_xscale = 3;
    newObj.image_yscale = 3;
}
else if (lado == 1)
{
    var newObj = instance_create_layer(550, -100, "spawner", obj_clt);

    newObj.image_xscale = -3;
    newObj.image_yscale = 3;
}
else
{
    var ladoComida = irandom(1);
    var indexComida = irandom(3);

    var listaComida = [spr_batata, spr_chocolate, spr_coxinha, spr_hamburguer];

    var newObj;
    if (ladoComida == 0)
    {
        newObj = instance_create_layer(0, -100, "spawner", obj_comida);
        newObj.image_xscale = 3;
    }
    else
    {
        newObj = instance_create_layer(500, -100, "spawner", obj_comida);
        newObj.image_xscale = -3;
    }

    newObj.image_yscale = 3;
    newObj.sprite_index = listaComida[indexComida];
}

alarm[0] = 60;