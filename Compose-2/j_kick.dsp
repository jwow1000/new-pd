declare filename "j_kick.dsp"; declare name "j_kick"; declare version "2.52.3";
declare compile_options "-single -scal -I libraries/ -I project/ -lang wasm";
declare library_path0 "/libraries/stdfaust.lib";
declare library_path1 "/libraries/signals.lib";
declare library_path2 "/libraries/maths.lib";
declare library_path3 "/libraries/platform.lib";
declare library_path4 "/libraries/envelopes.lib";
declare library_path5 "/libraries/oscillators.lib";
declare library_path6 "/libraries/basics.lib";
declare basics_lib_name "Faust Basic Element Library";
declare basics_lib_version "0.8";
declare envelopes_lib_ar_author "Yann Orlarey, Stéphane Letz";
declare envelopes_lib_author "GRAME";
declare envelopes_lib_copyright "GRAME";
declare envelopes_lib_license "LGPL with exception";
declare envelopes_lib_name "Faust Envelope Library";
declare envelopes_lib_version "0.2";
declare filename "FaustDSP";
declare maths_lib_author "GRAME";
declare maths_lib_copyright "GRAME";
declare maths_lib_license "LGPL with exception";
declare maths_lib_name "Faust Math Library";
declare maths_lib_version "2.5";
declare name "FaustDSP";
declare oscillators_lib_name "Faust Oscillator Library";
declare oscillators_lib_version "0.3";
declare platform_lib_name "Generic Platform Library";
declare platform_lib_version "0.2";
declare signals_lib_name "Faust Signal Routing Library";
declare signals_lib_version "0.3";
ID_0 = (65536 : int);
ID_1 = _, ID_0;
ID_2 = (ID_1 : %);
ID_3 = (1 : mem);
ID_4 = _, ID_3;
ID_5 = (ID_4 : +);
ID_6 = ID_2 ~ ID_5;
ID_7 = (ID_6 : float);
ID_8 = ID_7, 6.2831855f;
ID_9 = (ID_8 : *);
ID_10 = (65536 : float);
ID_11 = ID_9, ID_10;
ID_12 = ID_11 : /;
ID_13 = (ID_12 : sin);
ID_14 = button("bassGate");
ID_15 = button("gate");
ID_16 = ID_14, ID_15;
ID_17 = (ID_16 : +);
ID_18 = (ID_17 : mem);
ID_19 = ID_17, ID_18;
ID_20 = (ID_19 : <=);
ID_21 = \(x19).(x19,(x19,0 : >) : +), ID_20;
ID_22 = (ID_21 : *);
ID_23 = (ID_19 : >);
ID_24 = ID_22, ID_23;
ID_25 = (ID_24 : +);
ID_26 = ID_25 ~ _;
ID_27 = fconstant(int fSamplingFreq, <math.h>);
ID_28 = 1.0f, ID_27;
ID_29 = (ID_28 : max);
ID_30 = 1.92e+05f, ID_29;
ID_31 = (ID_30 : min);
ID_32 = 0.001f, ID_31;
ID_33 = (ID_32 : *);
ID_34 = 1, ID_33;
ID_35 = (ID_34 : max);
ID_36 = 1, ID_35;
ID_37 = (ID_36 : /);
ID_38 = ID_26, ID_37;
ID_39 = (ID_38 : *);
ID_40 = 0.01f, ID_31;
ID_41 = (ID_40 : *);
ID_42 = 1, ID_41;
ID_43 = (ID_42 : max);
ID_44 = 1, ID_43;
ID_45 = (ID_44 : /);
ID_46 = ID_35, ID_45;
ID_47 = (ID_46 : *);
ID_48 = 1, ID_47;
ID_49 = (ID_48 : +);
ID_50 = ID_26, ID_45;
ID_51 = (ID_50 : *);
ID_52 = ID_49, ID_51;
ID_53 = (ID_52 : -);
ID_54 = ID_39, ID_53;
ID_55 = ID_54 : min;
ID_56 = 0, _;
ID_57 = ID_56 : max;
ID_58 = (ID_55 : ID_57);
ID_59 = hslider("freqB", 44.0f, 2e+01f, 2e+03f, 0.01f);
ID_60 = (ID_59 : \(x20).(\(x21).(((1.0f,(1,(44.1f,(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : /) : -) : -),x20 : *),((1,(44.1f,(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : /) : -),x21 : *) : +)~_));
ID_61 = ID_60, 5;
ID_62 = (ID_61 : *);
ID_63 = ID_58, ID_62;
ID_64 = (ID_63 : *);
ID_65 = ID_64, ID_60;
ID_66 = (ID_65 : +);
ID_67 = ID_66, ID_31;
ID_68 = (ID_67 : /);
ID_69 = _, ID_68;
ID_70 = (ID_69 : +);
ID_71 = ID_70, 0;
ID_72 = 0, ID_71;
ID_73 = ID_72 : select2;
ID_74 = (ID_73 : \(x22).(x22,(x22 : floor) : -));
ID_75 = ID_74 ~ _;
ID_76 = _, ID_10;
ID_77 = ID_76 : *;
ID_78 = ID_75 : ID_77;
ID_79 = (ID_78 : int);
ID_80 = ID_13, ID_79;
ID_81 = 65536, ID_80;
ID_82 = (ID_81 : rdtable);
ID_83 = \(x23).(x23,(x23,0 : >) : +), ID_20;
ID_84 = (ID_83 : *);
ID_85 = ID_84, ID_23;
ID_86 = (ID_85 : +);
ID_87 = ID_86 ~ _;
ID_88 = ID_87, ID_45;
ID_89 = (ID_88 : *);
ID_90 = 0.3f, ID_31;
ID_91 = (ID_90 : *);
ID_92 = 1, ID_91;
ID_93 = (ID_92 : max);
ID_94 = 1, ID_93;
ID_95 = (ID_94 : /);
ID_96 = ID_43, ID_95;
ID_97 = (ID_96 : *);
ID_98 = 1, ID_97;
ID_99 = (ID_98 : +);
ID_100 = ID_87, ID_95;
ID_101 = (ID_100 : *);
ID_102 = ID_99, ID_101;
ID_103 = (ID_102 : -);
ID_104 = ID_89, ID_103;
ID_105 = ID_104 : min;
ID_106 = (ID_105 : ID_57);
ID_107 = ID_82, ID_106;
ID_108 = (ID_107 : *);
ID_109 = hslider("bGain", 0.5f, 0.0f, 1.0f, 0.001f);
ID_110 = ID_108, ID_109;
ID_111 = (ID_110 : *);
ID_112 = button("clickGate");
ID_113 = ID_112, ID_15;
ID_114 = (ID_113 : +);
ID_115 = (ID_114 : mem);
ID_116 = ID_114, ID_115;
ID_117 = (ID_116 : <=);
ID_118 = \(x30).(x30,(x30,0 : >) : +), ID_117;
ID_119 = (ID_118 : *);
ID_120 = (ID_116 : >);
ID_121 = ID_119, ID_120;
ID_122 = (ID_121 : +);
ID_123 = ID_122 ~ _;
ID_124 = ID_123, ID_37;
ID_125 = (ID_124 : *);
ID_126 = ID_35, ID_37;
ID_127 = (ID_126 : *);
ID_128 = 1, ID_127;
ID_129 = (ID_128 : +);
ID_130 = ID_129, ID_125;
ID_131 = (ID_130 : -);
ID_132 = ID_125, ID_131;
ID_133 = ID_132 : min;
ID_134 = (ID_133 : ID_57);
ID_135 = hslider("freqC", 44.0f, 2e+01f, 2e+03f, 0.01f);
ID_136 = (ID_135 : \(x20).(\(x21).(((1.0f,(1,(44.1f,(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : /) : -) : -),x20 : *),((1,(44.1f,(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : /) : -),x21 : *) : +)~_));
ID_137 = ID_136, 2.5f;
ID_138 = (ID_137 : *);
ID_139 = ID_138, 4;
ID_140 = (ID_139 : *);
ID_141 = ID_134, ID_140;
ID_142 = (ID_141 : *);
ID_143 = ID_142, ID_138;
ID_144 = (ID_143 : +);
ID_145 = ID_144, ID_31;
ID_146 = (ID_145 : /);
ID_147 = _, ID_146;
ID_148 = (ID_147 : +);
ID_149 = ID_148, 0;
ID_150 = 0, ID_149;
ID_151 = ID_150 : select2;
ID_152 = (ID_151 : \(x22).(x22,(x22 : floor) : -));
ID_153 = ID_152 ~ _;
ID_154 = ID_153 : ID_77;
ID_155 = (ID_154 : int);
ID_156 = ID_13, ID_155;
ID_157 = 65536, ID_156;
ID_158 = (ID_157 : rdtable);
ID_159 = \(x31).(x31,(x31,0 : >) : +), ID_117;
ID_160 = (ID_159 : *);
ID_161 = ID_160, ID_120;
ID_162 = (ID_161 : +);
ID_163 = ID_162 ~ _;
ID_164 = 0.0006f, ID_31;
ID_165 = (ID_164 : *);
ID_166 = 1, ID_165;
ID_167 = (ID_166 : max);
ID_168 = 1, ID_167;
ID_169 = (ID_168 : /);
ID_170 = ID_163, ID_169;
ID_171 = (ID_170 : *);
ID_172 = 0.05f, ID_31;
ID_173 = (ID_172 : *);
ID_174 = 1, ID_173;
ID_175 = (ID_174 : max);
ID_176 = 1, ID_175;
ID_177 = (ID_176 : /);
ID_178 = ID_167, ID_177;
ID_179 = (ID_178 : *);
ID_180 = 1, ID_179;
ID_181 = (ID_180 : +);
ID_182 = ID_163, ID_177;
ID_183 = (ID_182 : *);
ID_184 = ID_181, ID_183;
ID_185 = (ID_184 : -);
ID_186 = ID_171, ID_185;
ID_187 = ID_186 : min;
ID_188 = (ID_187 : ID_57);
ID_189 = ID_158, ID_188;
ID_190 = (ID_189 : *);
ID_191 = hslider("cGain", 0.5f, 0.0f, 1.0f, 0.001f);
ID_192 = ID_191, 0.5f;
ID_193 = (ID_192 : *);
ID_194 = ID_190, ID_193;
ID_195 = (ID_194 : *);
ID_196 = \(x38).(x38,(x38,0 : >) : +), ID_117;
ID_197 = (ID_196 : *);
ID_198 = ID_197, ID_120;
ID_199 = (ID_198 : +);
ID_200 = ID_199 ~ _;
ID_201 = ID_200, ID_37;
ID_202 = (ID_201 : *);
ID_203 = ID_129, ID_202;
ID_204 = (ID_203 : -);
ID_205 = ID_202, ID_204;
ID_206 = ID_205 : min;
ID_207 = (ID_206 : ID_57);
ID_208 = ID_136, 9;
ID_209 = (ID_208 : *);
ID_210 = ID_209, 6;
ID_211 = (ID_210 : *);
ID_212 = ID_207, ID_211;
ID_213 = (ID_212 : *);
ID_214 = ID_213, ID_209;
ID_215 = (ID_214 : +);
ID_216 = ID_215, ID_31;
ID_217 = (ID_216 : /);
ID_218 = _, ID_217;
ID_219 = (ID_218 : +);
ID_220 = ID_219, 0;
ID_221 = 0, ID_220;
ID_222 = ID_221 : select2;
ID_223 = (ID_222 : \(x22).(x22,(x22 : floor) : -));
ID_224 = ID_223 ~ _;
ID_225 = ID_224 : ID_77;
ID_226 = (ID_225 : int);
ID_227 = ID_13, ID_226;
ID_228 = 65536, ID_227;
ID_229 = (ID_228 : rdtable);
ID_230 = \(x39).(x39,(x39,0 : >) : +), ID_117;
ID_231 = (ID_230 : *);
ID_232 = ID_231, ID_120;
ID_233 = (ID_232 : +);
ID_234 = ID_233 ~ _;
ID_235 = 0.0008f, ID_31;
ID_236 = (ID_235 : *);
ID_237 = 1, ID_236;
ID_238 = (ID_237 : max);
ID_239 = 1, ID_238;
ID_240 = (ID_239 : /);
ID_241 = ID_234, ID_240;
ID_242 = (ID_241 : *);
ID_243 = 0.1f, ID_31;
ID_244 = (ID_243 : *);
ID_245 = 1, ID_244;
ID_246 = (ID_245 : max);
ID_247 = 1, ID_246;
ID_248 = (ID_247 : /);
ID_249 = ID_238, ID_248;
ID_250 = (ID_249 : *);
ID_251 = 1, ID_250;
ID_252 = (ID_251 : +);
ID_253 = ID_234, ID_248;
ID_254 = (ID_253 : *);
ID_255 = ID_252, ID_254;
ID_256 = (ID_255 : -);
ID_257 = ID_242, ID_256;
ID_258 = ID_257 : min;
ID_259 = (ID_258 : ID_57);
ID_260 = ID_229, ID_259;
ID_261 = (ID_260 : *);
ID_262 = ID_191, 0.1f;
ID_263 = (ID_262 : *);
ID_264 = ID_261, ID_263;
ID_265 = (ID_264 : *);
ID_266 = ID_195, ID_265;
ID_267 = \(x46).(x46,(x46,0 : >) : +), ID_117;
ID_268 = (ID_267 : *);
ID_269 = ID_268, ID_120;
ID_270 = (ID_269 : +);
ID_271 = ID_270 ~ _;
ID_272 = ID_271, ID_37;
ID_273 = (ID_272 : *);
ID_274 = ID_129, ID_273;
ID_275 = (ID_274 : -);
ID_276 = ID_273, ID_275;
ID_277 = ID_276 : min;
ID_278 = (ID_277 : ID_57);
ID_279 = ID_136, 12.5f;
ID_280 = (ID_279 : *);
ID_281 = ID_280, 12;
ID_282 = (ID_281 : *);
ID_283 = ID_278, ID_282;
ID_284 = (ID_283 : *);
ID_285 = ID_284, ID_280;
ID_286 = (ID_285 : +);
ID_287 = ID_286, ID_31;
ID_288 = (ID_287 : /);
ID_289 = _, ID_288;
ID_290 = (ID_289 : +);
ID_291 = ID_290, 0;
ID_292 = 0, ID_291;
ID_293 = ID_292 : select2;
ID_294 = (ID_293 : \(x22).(x22,(x22 : floor) : -));
ID_295 = ID_294 ~ _;
ID_296 = ID_295 : ID_77;
ID_297 = (ID_296 : int);
ID_298 = ID_13, ID_297;
ID_299 = 65536, ID_298;
ID_300 = (ID_299 : rdtable);
ID_301 = \(x47).(x47,(x47,0 : >) : +), ID_117;
ID_302 = (ID_301 : *);
ID_303 = ID_302, ID_120;
ID_304 = (ID_303 : +);
ID_305 = ID_304 ~ _;
ID_306 = ID_305, ID_169;
ID_307 = (ID_306 : *);
ID_308 = ID_167, ID_45;
ID_309 = (ID_308 : *);
ID_310 = 1, ID_309;
ID_311 = (ID_310 : +);
ID_312 = ID_305, ID_45;
ID_313 = (ID_312 : *);
ID_314 = ID_311, ID_313;
ID_315 = (ID_314 : -);
ID_316 = ID_307, ID_315;
ID_317 = ID_316 : min;
ID_318 = (ID_317 : ID_57);
ID_319 = ID_300, ID_318;
ID_320 = (ID_319 : *);
ID_321 = ID_191, 0.08f;
ID_322 = (ID_321 : *);
ID_323 = ID_320, ID_322;
ID_324 = (ID_323 : *);
ID_325 = +, ID_324;
ID_326 = ID_325 : +;
ID_327 = (ID_266 : ID_326);
ID_328 = ID_111, ID_327;
process = ID_328;
