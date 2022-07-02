#macro current_frame_active (current_frame < floor(current_frame) + current_time_scale)

#define init
    global.newLevel = instance_exists(GenCont);

    global.sprVanPortal = sprite_add_base64("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", 5, 40, 40);
    global.sprVanPortalDisappear = sprite_add_base64("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", 5, 40, 40);

#define popo_type(_modType, _modName, _typName)
    return {
        typ_name  : _typName,
        mod_type  : _modType,
        mod_name  : _modName,
        on_create : script_ref_create_ext(_modType, _modName, _typName + "_create"),
        on_spawn  : script_ref_create_ext(_modType, _modName, _typName + "_spawn"),
        on_step   : script_ref_create_ext(_modType, _modName, _typName + "_step")
    };

#define step
    if("vanlevel" not in GameCont) GameCont.vanlevel = 0;

     // Replace IDPD Spawns:
    with(IDPDSpawn) if(instance_is(self, IDPDSpawn)){
        GameCont.popolevel--;
        IDPDPortal_create(x, y, elite, freak, 0);
        instance_destroy();
    }
    with(VanSpawn){
        IDPDPortal_create(x, y, (GameCont.loops > 0 && random(6 - GameCont.loops) <= 1), (GameCont.loops >= 3), 1);
        instance_destroy();
    }

#define draw_dark
    with(instances_named(CustomObject, "IDPDPortal")){
        var r = (van ? 120 : 60);
        draw_circle(x, y, r + random(6), 0);
    }

#define draw_dark_end
    with(instances_named(CustomObject, "IDPDPortal")){
        var r = (van ? 40 : 20);
        draw_circle(x, y, r + random(6), 0);
    }

#define instances_named(_inst, _name)
    return instances_matching(_inst, "name", _name);

#define scrAlarm(_alarm)
    var a = alarm_get(_alarm);
    if(a > 0){
        a -= max(1, current_time_scale);
        alarm_set(_alarm, a);
        if(a <= 0){
            alarm_set(_alarm, -1);
            return true;
        }
    }
    return false;

#define IDPDPortal_create(_x, _y, _elite, _freak, _van)
     // Increment IDPD Level:
    var _IDPDLevel = 0;
    if(_van){
        _IDPDLevel = ++GameCont.vanlevel;
    }
    else if(!instance_exists(LilHunter) || GameCont.loops > 0){
        _IDPDLevel = ++GameCont.popolevel;
    }

     // Compile Popo List:
    var _list = [popo_type("mod", mod_current, (_van ? "Van" : "Popo"))],
        _modType = ["mod", "weapon", "race", "skill", "crown", "area", "skin"],
        _scrt = "popo";

    for(var i = 0; i < array_length(_modType); i++){
        var t = _modType[i],
            _modName = mod_get_names(t);

        for(var j = 0; j < array_length(_modName); j++){
            var n = _modName[j];
            if(n != mod_current && mod_script_exists(t, n, _scrt)){
                _popo = mod_script_call(t, n, _scrt);
                for(var l = 0; l < lq_size(_popo); l++){
                    var _popoName = lq_get_key(_popo, l),
                        _popoType = lq_get(_popo, _popoName),
                        _popoLvl = lq_defget(_popoType, "lvl", 0),
                        _popoVan = lq_defget(_popoType, "van", 0);
    
                    if(_popoLvl <= _IDPDLevel && !(_popoVan ^^ _van)){
                        _list[array_length(_list)] = popo_type(t, n, _popoName);
                    }
                }
            }
        }
    }

     // Portal:
    with(instance_create(_x, _y, CustomObject)){
        name = "IDPDPortal";

         // Vars:
        elite = _elite;
        freak = _freak;
        van = !!_van;
        clear = true; // Clear walls
        level = _IDPDLevel;
        friction = 0.1;

         // Visual:
        spr_strt = (van ? sprVanPortalStart            : sprIDPDPortalStart);
        spr_chrg = (van ? sprVanPortalCharge           : sprIDPDPortalCharge);
        spr_open = (van ? sprVanPortalClose            : sprIDPDPortalClose);
        spr_loop = (van ? global.sprVanPortal          : sprPopoPortal);
        spr_clos = (van ? global.sprVanPortalDisappear : sprPopoPortalDisappear);
        spr_effx = sprIDPDPortalCharge;
        image_speed = 0.4;
        depth = (!van ? -1 : -3);

         // Sound:
        snd_warn = (van ? sndVanWarning : (elite ? sndEliteIDPDPortalSpawn : sndIDPDPortalSpawn));
        snd_spwn = (van ? sndVanPortal  : -1);
        if(GameCont.area == 101) snd_warn = sndOasisPopo;

         // Spawn Delay:
        var _portalNum = array_length(instances_matching(instances_named(object_index, name), "van", van));
        alarm0 = 40 + ((van ? 10 : 3) * _portalNum);

         // Type:
        var t = 0;
        if((!instance_exists(LilHunter) || GameCont.loops > 0) && random(3) < 2){
            t = irandom(array_length(_list) - 1);
            with(WantVan) canspawn = 1; // No more softlock
        }
        type = _list[t];
        can_step = mod_script_exists(type.on_step[0], type.on_step[1], type.on_step[2]);

         // Type's Create Event:
        var e = type.on_create;
        if(mod_script_exists(e[0], e[1], e[2])){
            mod_script_call(e[0], e[1], e[2]);
        }

         // Do Things:
        sound_play(snd_warn);
        sprite_index = spr_strt;
        if(van && clear) instance_create(x, y, PortalClear);

        on_step = IDPDPortal_step;

        return id;
    }

#define IDPDPortal_step
     // Type's Step:
    if(can_step){
        var e = type.on_step;
        mod_script_call(e[0], e[1], e[2]);
    }

     // Particles:
    if(sprite_index == spr_chrg && sprite_exists(spr_effx) && current_frame_active){
        with(instance_create(x + random_range(-48, 48), y + random_range(-48, 48), IDPDPortalCharge)){
            motion_add(point_direction(x, y, other.x, other.y), 2 + random(1));
            alarm0 = (point_distance(x, y, other.x, other.y) / speed) + 1;
            sprite_index = other.spr_effx;
        }
    }

     // Spawning:
    if(scrAlarm(0)){
         // Open:
        if(sprite_index == spr_chrg){
            alarm0 = 12;
            image_index = 0;
            sprite_index = spr_open;
        }

         // Spawn In:
        else{
             // Call Spawn Event:
            var e = type.on_spawn;
            if(mod_script_exists(e[0], e[1], e[2])){
                mod_script_call(e[0], e[1], e[2]);
            }

             // Clear Walls:    
            if(clear){
                clear = 0;
                if(van){
                    var o = 32;
                    for(var a = 0; a < 360; a += 90){
                        instance_create(x + lengthdir_x(o, a), y + lengthdir_y(o, a), PortalClear);
                    }
                }
                else instance_create(x, y, PortalClear);
                view_shake_at(x, y, 8);
                sound_play(snd_spwn);
            }
        }
    }

     // On Animating:
    if(sprite_index != spr_loop){
        if(image_index + image_speed > image_number - 1){
            if(sprite_index == spr_clos || sprite_index == spr_open){
                instance_destroy(); // Close
            }
            else sprite_index = spr_chrg; // Charging
        }
    }

#define Popo_create
     // Find what to spawn:
    spawn_idpd = Grunt;
    spawn_num = 1;

    if(freak) spawn_idpd = PopoFreak;
    else if(!instance_exists(LilHunter) || GameCont.loops > 0 || elite){
        var c = ["Grunt"],
            i = 0;

        if(level >= 3){
            c[++i] = "Grunt";
            c[++i] = "Inspector";
        }
        if(level >= 5){
            c[++i] = "Shielder";
        }

        spawn_idpd = asset_get_index((elite ? "Elite" : "") + c[irandom(i - 1)]);
    }
    if(spawn_idpd == Grunt) spawn_num = 2 + GameCont.loops;

#define Popo_spawn
    repeat(spawn_num){
        with(instance_create(x + random_range(-2, 2), y + random_range(-2, 2), spawn_idpd)){
            speed = 4;
            var n = instance_nearest(x, y, Player);
            if(instance_exists(n)) direction = point_direction(x, y, n.x, n.y) + random_range(-45, 45);
            else direction = random(360);
        }
    }

#define Van_spawn
    instance_create(x, y, Van);