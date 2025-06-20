
dofile(LockOn_Options.script_path .. "MFCD/avMFCD.lua")

MAP_RENDER                 = CreateElement "ceTexPoly"
MAP_RENDER.name            = "MAP_RENDER"
MAP_RENDER.init_pos        = {0, -rdr_frame_length_half, 0}
MAP_RENDER.vertices        = {{-rdr_frame_length_half,  2.0 * rdr_frame_length_half},
                              { rdr_frame_length_half,  2.0 * rdr_frame_length_half},
                              { rdr_frame_length_half,  0.0},
                              {-rdr_frame_length_half,  0.0}}
MAP_RENDER.tex_coords      = {{0,0},{1,0},{1,1},{0,1}}
MAP_RENDER.indices         = DEF_BOX_INDICES
if use_ed_render_target then
    MAP_RENDER.material        = "render_target_"..tostring(GetRenderTarget() + 1)
else
    MAP_RENDER.material        = "AGRadar_Material_" .. tostring(GetRenderTarget())
end
MAP_RENDER.level           = RDR_LEVEL
MAP_RENDER.h_clip_relation = h_clip_relations.COMPARE
MAP_RENDER.use_mipfilter   = true
MAP_RENDER.additive_alpha  = true
MAP_RENDER.controllers     = {{'rdr_video_sector'},{'rdr_video_check'},}

AddToUpper(MAP_RENDER)

TA_RENDER                 = CreateElement "ceTexPoly"
TA_RENDER.name            = "TA_RENDER"
TA_RENDER.init_pos        = {0, 0, 0}
TA_RENDER.vertices        = {{-rdr_frame_length_half,  rdr_frame_length_half},
                             { rdr_frame_length_half,  rdr_frame_length_half},
                             { rdr_frame_length_half, -rdr_frame_length_half},
                             {-rdr_frame_length_half, -rdr_frame_length_half}}
TA_RENDER.tex_coords      = {{0,0},{1,0},{1,1},{0,1}}
TA_RENDER.indices         = DEF_BOX_INDICES
--TA_RENDER.material      = "render_target_"..tostring(GetRenderTarget() + 1)
TA_RENDER.material        = "AGRadar_TA_Material_" .. tostring(GetRenderTarget())
TA_RENDER.level           = RDR_LEVEL
TA_RENDER.h_clip_relation = h_clip_relations.COMPARE
TA_RENDER.use_mipfilter   = true
TA_RENDER.additive_alpha  = true
TA_RENDER.controllers     = {{'rdr_video_check', 1},}

AddToUpper(TA_RENDER)

WA_RENDER                 = CreateElement "ceTexPoly"
WA_RENDER.name            = "WA_RENDER"
WA_RENDER.init_pos        = {0, 0, 0}
WA_RENDER.vertices        = {{-rdr_frame_length_half,  rdr_frame_length_half},
                             { rdr_frame_length_half,  rdr_frame_length_half},
                             { rdr_frame_length_half, -rdr_frame_length_half},
                             {-rdr_frame_length_half, -rdr_frame_length_half}}
WA_RENDER.tex_coords      = {{0,0},{1,0},{1,1},{0,1}}
WA_RENDER.indices         = DEF_BOX_INDICES
--WA_RENDER.material      = "render_target_"..tostring(GetRenderTarget() + 1)
WA_RENDER.material        = "AGRadar_WA_Material_" .. tostring(GetRenderTarget())
WA_RENDER.level           = RDR_LEVEL
WA_RENDER.h_clip_relation = h_clip_relations.COMPARE
WA_RENDER.use_mipfilter   = true
WA_RENDER.additive_alpha  = true
WA_RENDER.controllers     = {{'rdr_video_check', 2},}

AddToUpper(WA_RENDER)
