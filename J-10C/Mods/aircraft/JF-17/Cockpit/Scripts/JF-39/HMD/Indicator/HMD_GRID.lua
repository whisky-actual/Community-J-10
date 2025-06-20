dofile(LockOn_Options.script_path .. "JF-39/HMD/Indicator/HMD_def.lua")


reticle             = CreateElement "ceTexPoly"
reticle.material    = HUD_TEX_IND2
reticle.name        = "fixed_reticle"
reticle.tex_coords  = HUD_tex_coord(555, 390, 633, 809, HUD_TEX_IND2_W, HUD_TEX_IND2_H)
reticle.init_pos    = {0.0, vert_bias - 87.0, 0.0}
reticle.vertices    = {{86, 110}, {86,-110}, {-86,-110},{-86, 110}}
reticle.indices     = DEF_BOX_INDICES
AddElementObject(reticle)
