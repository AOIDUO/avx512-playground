define dso_local void @_Z15simplex_iterateRSt6vectorIS_IfSaIfEESaIS1_EE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<float>, std::allocator<std::vector<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %0, align 8, !tbaa !10
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = load ptr, ptr %4, align 8, !tbaa !13
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = freeze i64 %15
  %17 = lshr i64 %16, 2
  %18 = trunc i64 %17 to i32
  %19 = add nsw i32 %9, -1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %"class.std::vector.0", ptr %4, i64 %20
  %22 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = load ptr, ptr %21, align 8, !tbaa !13
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = icmp eq ptr %23, %24
  br i1 %28, label %41, label %29

29:                                               ; preds = %1
  %30 = icmp ugt i64 %27, 9223372036854775804
  br i1 %30, label %31, label %32, !prof !35

31:                                               ; preds = %29
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

32:                                               ; preds = %29
  %33 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %27) #18
  %34 = load ptr, ptr %21, align 8, !tbaa !36
  %35 = load ptr, ptr %22, align 8, !tbaa !36
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = ptrtoint ptr %35 to i64
  %39 = ptrtoint ptr %34 to i64
  %40 = sub i64 %38, %39
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %33, ptr align 4 %34, i64 %40, i1 false)
  br label %41

41:                                               ; preds = %1, %32, %37
  %42 = phi ptr [ %33, %32 ], [ %33, %37 ], [ null, %1 ]
  %43 = load ptr, ptr %0, align 8, !tbaa !10
  %44 = getelementptr inbounds %"class.std::vector.0", ptr %43, i64 %20
  %45 = load ptr, ptr %44, align 8, !tbaa !36
  %46 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %44, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !36
  %48 = icmp eq ptr %45, %47
  %49 = getelementptr inbounds float, ptr %45, i64 1
  %50 = icmp eq ptr %49, %47
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %41
  %53 = load float, ptr %45, align 4, !tbaa !24
  br label %54

54:                                               ; preds = %54, %52
  %55 = phi float [ %60, %54 ], [ %53, %52 ]
  %56 = phi ptr [ %62, %54 ], [ %49, %52 ]
  %57 = phi ptr [ %61, %54 ], [ %45, %52 ]
  %58 = load float, ptr %56, align 4, !tbaa !24
  %59 = fcmp olt float %58, %55
  %60 = select i1 %59, float %58, float %55
  %61 = select i1 %59, ptr %56, ptr %57
  %62 = getelementptr inbounds float, ptr %56, i64 1
  %63 = icmp eq ptr %62, %47
  br i1 %63, label %64, label %54, !llvm.loop !37

64:                                               ; preds = %54, %41
  %65 = phi ptr [ %45, %41 ], [ %61, %54 ]
  %66 = ptrtoint ptr %65 to i64
  %67 = ptrtoint ptr %45 to i64
  %68 = sub i64 %66, %67
  %69 = icmp slt i32 %9, 1
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
          to label %71 unwind label %131

71:                                               ; preds = %70
  unreachable

72:                                               ; preds = %64
  %73 = icmp eq i32 %19, 0
  br i1 %73, label %211, label %74

74:                                               ; preds = %72
  %75 = shl nuw nsw i64 %20, 2
  %76 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %75) #18
          to label %77 unwind label %131

77:                                               ; preds = %74
  store float 0.000000e+00, ptr %76, align 4, !tbaa !24
  %78 = getelementptr float, ptr %76, i64 1
  %79 = icmp eq i32 %19, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds float, ptr %76, i64 %20
  %82 = add nsw i64 %75, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %78, i8 0, i64 %82, i1 false), !tbaa !24
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi ptr [ %81, %80 ], [ %78, %77 ]
  %85 = load ptr, ptr %0, align 8, !tbaa !10
  %86 = shl i64 %16, 30
  %87 = add i64 %86, -4294967296
  %88 = ashr exact i64 %87, 32
  %89 = shl i64 %68, 30
  %90 = ashr exact i64 %89, 32
  %91 = zext i32 %19 to i64
  %92 = add nsw i64 %91, -1
  %93 = and i64 %91, 7
  %94 = icmp ult i64 %92, 7
  br i1 %94, label %97, label %95

95:                                               ; preds = %83
  %96 = and i64 %91, 4294967288
  br label %134

97:                                               ; preds = %134, %83
  %98 = phi i64 [ 0, %83 ], [ %208, %134 ]
  %99 = icmp eq i64 %93, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %97, %100
  %101 = phi i64 [ %111, %100 ], [ %98, %97 ]
  %102 = phi i64 [ %112, %100 ], [ 0, %97 ]
  %103 = getelementptr inbounds %"class.std::vector.0", ptr %85, i64 %101
  %104 = load ptr, ptr %103, align 8, !tbaa !13
  %105 = getelementptr inbounds float, ptr %104, i64 %88
  %106 = load float, ptr %105, align 4, !tbaa !24
  %107 = getelementptr inbounds float, ptr %104, i64 %90
  %108 = load float, ptr %107, align 4, !tbaa !24
  %109 = fdiv float %106, %108
  %110 = getelementptr inbounds float, ptr %76, i64 %101
  store float %109, ptr %110, align 4, !tbaa !24
  %111 = add nuw nsw i64 %101, 1
  %112 = add i64 %102, 1
  %113 = icmp eq i64 %112, %93
  br i1 %113, label %114, label %100, !llvm.loop !38

114:                                              ; preds = %100, %97
  %115 = icmp eq ptr %76, %84
  %116 = getelementptr inbounds float, ptr %76, i64 1
  %117 = icmp eq ptr %116, %84
  %118 = select i1 %115, i1 true, i1 %117
  br i1 %118, label %211, label %119

119:                                              ; preds = %114
  %120 = load float, ptr %76, align 4, !tbaa !24
  br label %121

121:                                              ; preds = %121, %119
  %122 = phi float [ %127, %121 ], [ %120, %119 ]
  %123 = phi ptr [ %129, %121 ], [ %116, %119 ]
  %124 = phi ptr [ %128, %121 ], [ %76, %119 ]
  %125 = load float, ptr %123, align 4, !tbaa !24
  %126 = fcmp olt float %125, %122
  %127 = select i1 %126, float %125, float %122
  %128 = select i1 %126, ptr %123, ptr %124
  %129 = getelementptr inbounds float, ptr %123, i64 1
  %130 = icmp eq ptr %129, %84
  br i1 %130, label %211, label %121, !llvm.loop !37

131:                                              ; preds = %74, %70
  %132 = landingpad { ptr, i32 }
          cleanup
  %133 = icmp eq ptr %42, null
  br i1 %133, label %712, label %711

134:                                              ; preds = %134, %95
  %135 = phi i64 [ 0, %95 ], [ %208, %134 ]
  %136 = phi i64 [ 0, %95 ], [ %209, %134 ]
  %137 = getelementptr inbounds %"class.std::vector.0", ptr %85, i64 %135
  %138 = load ptr, ptr %137, align 8, !tbaa !13
  %139 = getelementptr inbounds float, ptr %138, i64 %88
  %140 = load float, ptr %139, align 4, !tbaa !24
  %141 = getelementptr inbounds float, ptr %138, i64 %90
  %142 = load float, ptr %141, align 4, !tbaa !24
  %143 = fdiv float %140, %142
  %144 = getelementptr inbounds float, ptr %76, i64 %135
  store float %143, ptr %144, align 4, !tbaa !24
  %145 = or i64 %135, 1
  %146 = getelementptr inbounds %"class.std::vector.0", ptr %85, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !13
  %148 = getelementptr inbounds float, ptr %147, i64 %88
  %149 = load float, ptr %148, align 4, !tbaa !24
  %150 = getelementptr inbounds float, ptr %147, i64 %90
  %151 = load float, ptr %150, align 4, !tbaa !24
  %152 = fdiv float %149, %151
  %153 = getelementptr inbounds float, ptr %76, i64 %145
  store float %152, ptr %153, align 4, !tbaa !24
  %154 = or i64 %135, 2
  %155 = getelementptr inbounds %"class.std::vector.0", ptr %85, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !13
  %157 = getelementptr inbounds float, ptr %156, i64 %88
  %158 = load float, ptr %157, align 4, !tbaa !24
  %159 = getelementptr inbounds float, ptr %156, i64 %90
  %160 = load float, ptr %159, align 4, !tbaa !24
  %161 = fdiv float %158, %160
  %162 = getelementptr inbounds float, ptr %76, i64 %154
  store float %161, ptr %162, align 4, !tbaa !24
  %163 = or i64 %135, 3
  %164 = getelementptr inbounds %"class.std::vector.0", ptr %85, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !13
  %166 = getelementptr inbounds float, ptr %165, i64 %88
  %167 = load float, ptr %166, align 4, !tbaa !24
  %168 = getelementptr inbounds float, ptr %165, i64 %90
  %169 = load float, ptr %168, align 4, !tbaa !24
  %170 = fdiv float %167, %169
  %171 = getelementptr inbounds float, ptr %76, i64 %163
  store float %170, ptr %171, align 4, !tbaa !24
  %172 = or i64 %135, 4
  %173 = getelementptr inbounds %"class.std::vector.0", ptr %85, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !13
  %175 = getelementptr inbounds float, ptr %174, i64 %88
  %176 = load float, ptr %175, align 4, !tbaa !24
  %177 = getelementptr inbounds float, ptr %174, i64 %90
  %178 = load float, ptr %177, align 4, !tbaa !24
  %179 = fdiv float %176, %178
  %180 = getelementptr inbounds float, ptr %76, i64 %172
  store float %179, ptr %180, align 4, !tbaa !24
  %181 = or i64 %135, 5
  %182 = getelementptr inbounds %"class.std::vector.0", ptr %85, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !13
  %184 = getelementptr inbounds float, ptr %183, i64 %88
  %185 = load float, ptr %184, align 4, !tbaa !24
  %186 = getelementptr inbounds float, ptr %183, i64 %90
  %187 = load float, ptr %186, align 4, !tbaa !24
  %188 = fdiv float %185, %187
  %189 = getelementptr inbounds float, ptr %76, i64 %181
  store float %188, ptr %189, align 4, !tbaa !24
  %190 = or i64 %135, 6
  %191 = getelementptr inbounds %"class.std::vector.0", ptr %85, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !13
  %193 = getelementptr inbounds float, ptr %192, i64 %88
  %194 = load float, ptr %193, align 4, !tbaa !24
  %195 = getelementptr inbounds float, ptr %192, i64 %90
  %196 = load float, ptr %195, align 4, !tbaa !24
  %197 = fdiv float %194, %196
  %198 = getelementptr inbounds float, ptr %76, i64 %190
  store float %197, ptr %198, align 4, !tbaa !24
  %199 = or i64 %135, 7
  %200 = getelementptr inbounds %"class.std::vector.0", ptr %85, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !13
  %202 = getelementptr inbounds float, ptr %201, i64 %88
  %203 = load float, ptr %202, align 4, !tbaa !24
  %204 = getelementptr inbounds float, ptr %201, i64 %90
  %205 = load float, ptr %204, align 4, !tbaa !24
  %206 = fdiv float %203, %205
  %207 = getelementptr inbounds float, ptr %76, i64 %199
  store float %206, ptr %207, align 4, !tbaa !24
  %208 = add nuw nsw i64 %135, 8
  %209 = add i64 %136, 8
  %210 = icmp eq i64 %209, %96
  br i1 %210, label %97, label %134, !llvm.loop !40

211:                                              ; preds = %121, %72, %114
  %212 = phi ptr [ %76, %114 ], [ null, %72 ], [ %76, %121 ]
  %213 = phi ptr [ %76, %114 ], [ null, %72 ], [ %128, %121 ]
  %214 = ptrtoint ptr %213 to i64
  %215 = ptrtoint ptr %212 to i64
  %216 = sub i64 %214, %215
  %217 = lshr exact i64 %216, 2
  %218 = shl i64 %216, 30
  %219 = ashr exact i64 %218, 32
  %220 = load ptr, ptr %0, align 8, !tbaa !10
  %221 = getelementptr inbounds %"class.std::vector.0", ptr %220, i64 %219
  %222 = shl i64 %68, 30
  %223 = ashr exact i64 %222, 32
  %224 = load ptr, ptr %221, align 8, !tbaa !13
  %225 = getelementptr inbounds float, ptr %224, i64 %223
  %226 = load float, ptr %225, align 4, !tbaa !24
  %227 = icmp sgt i32 %18, 0
  br i1 %227, label %228, label %704

228:                                              ; preds = %211
  %229 = and i64 %17, 4294967295
  %230 = add nsw i64 %229, -1
  %231 = and i64 %17, 7
  %232 = icmp ult i64 %230, 7
  br i1 %232, label %235, label %233

233:                                              ; preds = %228
  %234 = sub nsw i64 %229, %231
  br label %579

235:                                              ; preds = %579, %228
  %236 = phi i64 [ 0, %228 ], [ %613, %579 ]
  %237 = icmp eq i64 %231, 0
  br i1 %237, label %247, label %238

238:                                              ; preds = %235, %238
  %239 = phi i64 [ %244, %238 ], [ %236, %235 ]
  %240 = phi i64 [ %245, %238 ], [ 0, %235 ]
  %241 = getelementptr inbounds float, ptr %224, i64 %239
  %242 = load float, ptr %241, align 4, !tbaa !24
  %243 = fdiv float %242, %226
  store float %243, ptr %241, align 4, !tbaa !24
  %244 = add nuw nsw i64 %239, 1
  %245 = add i64 %240, 1
  %246 = icmp eq i64 %245, %231
  br i1 %246, label %247, label %238, !llvm.loop !41

247:                                              ; preds = %238, %235
  %248 = icmp sgt i32 %9, 0
  %249 = and i1 %227, %248
  br i1 %249, label %250, label %704

250:                                              ; preds = %247
  %251 = and i64 %217, 4294967295
  %252 = and i64 %8, 4294967295
  %253 = add nsw i64 %252, -1
  %254 = and i64 %8, 3
  %255 = icmp ult i64 %253, 3
  br i1 %255, label %616, label %256

256:                                              ; preds = %250
  %257 = sub nsw i64 %252, %254
  %258 = and i64 %17, 7
  %259 = icmp ult i64 %230, 7
  %260 = sub nsw i64 %229, %258
  %261 = icmp eq i64 %258, 0
  %262 = and i64 %17, 7
  %263 = icmp ult i64 %230, 7
  %264 = sub nsw i64 %229, %262
  %265 = icmp eq i64 %262, 0
  %266 = and i64 %17, 7
  %267 = icmp ult i64 %230, 7
  %268 = sub nsw i64 %229, %266
  %269 = icmp eq i64 %266, 0
  %270 = and i64 %17, 7
  %271 = icmp ult i64 %230, 7
  %272 = sub nsw i64 %229, %270
  %273 = icmp eq i64 %270, 0
  br label %274

274:                                              ; preds = %575, %256
  %275 = phi i64 [ 0, %256 ], [ %576, %575 ]
  %276 = phi i64 [ 0, %256 ], [ %577, %575 ]
  %277 = icmp eq i64 %275, %251
  br i1 %277, label %350, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %"class.std::vector.0", ptr %220, i64 %275
  %280 = load ptr, ptr %279, align 8, !tbaa !13
  %281 = getelementptr inbounds float, ptr %280, i64 %223
  %282 = load float, ptr %281, align 4, !tbaa !24
  %283 = fneg float %282
  br i1 %259, label %337, label %284

284:                                              ; preds = %278, %284
  %285 = phi i64 [ %334, %284 ], [ 0, %278 ]
  %286 = phi i64 [ %335, %284 ], [ 0, %278 ]
  %287 = getelementptr inbounds float, ptr %280, i64 %285
  %288 = load float, ptr %287, align 4, !tbaa !24
  %289 = getelementptr inbounds float, ptr %224, i64 %285
  %290 = load float, ptr %289, align 4, !tbaa !24
  %291 = tail call float @llvm.fmuladd.f32(float %283, float %290, float %288)
  store float %291, ptr %287, align 4, !tbaa !24
  %292 = or i64 %285, 1
  %293 = getelementptr inbounds float, ptr %280, i64 %292
  %294 = load float, ptr %293, align 4, !tbaa !24
  %295 = getelementptr inbounds float, ptr %224, i64 %292
  %296 = load float, ptr %295, align 4, !tbaa !24
  %297 = tail call float @llvm.fmuladd.f32(float %283, float %296, float %294)
  store float %297, ptr %293, align 4, !tbaa !24
  %298 = or i64 %285, 2
  %299 = getelementptr inbounds float, ptr %280, i64 %298
  %300 = load float, ptr %299, align 4, !tbaa !24
  %301 = getelementptr inbounds float, ptr %224, i64 %298
  %302 = load float, ptr %301, align 4, !tbaa !24
  %303 = tail call float @llvm.fmuladd.f32(float %283, float %302, float %300)
  store float %303, ptr %299, align 4, !tbaa !24
  %304 = or i64 %285, 3
  %305 = getelementptr inbounds float, ptr %280, i64 %304
  %306 = load float, ptr %305, align 4, !tbaa !24
  %307 = getelementptr inbounds float, ptr %224, i64 %304
  %308 = load float, ptr %307, align 4, !tbaa !24
  %309 = tail call float @llvm.fmuladd.f32(float %283, float %308, float %306)
  store float %309, ptr %305, align 4, !tbaa !24
  %310 = or i64 %285, 4
  %311 = getelementptr inbounds float, ptr %280, i64 %310
  %312 = load float, ptr %311, align 4, !tbaa !24
  %313 = getelementptr inbounds float, ptr %224, i64 %310
  %314 = load float, ptr %313, align 4, !tbaa !24
  %315 = tail call float @llvm.fmuladd.f32(float %283, float %314, float %312)
  store float %315, ptr %311, align 4, !tbaa !24
  %316 = or i64 %285, 5
  %317 = getelementptr inbounds float, ptr %280, i64 %316
  %318 = load float, ptr %317, align 4, !tbaa !24
  %319 = getelementptr inbounds float, ptr %224, i64 %316
  %320 = load float, ptr %319, align 4, !tbaa !24
  %321 = tail call float @llvm.fmuladd.f32(float %283, float %320, float %318)
  store float %321, ptr %317, align 4, !tbaa !24
  %322 = or i64 %285, 6
  %323 = getelementptr inbounds float, ptr %280, i64 %322
  %324 = load float, ptr %323, align 4, !tbaa !24
  %325 = getelementptr inbounds float, ptr %224, i64 %322
  %326 = load float, ptr %325, align 4, !tbaa !24
  %327 = tail call float @llvm.fmuladd.f32(float %283, float %326, float %324)
  store float %327, ptr %323, align 4, !tbaa !24
  %328 = or i64 %285, 7
  %329 = getelementptr inbounds float, ptr %280, i64 %328
  %330 = load float, ptr %329, align 4, !tbaa !24
  %331 = getelementptr inbounds float, ptr %224, i64 %328
  %332 = load float, ptr %331, align 4, !tbaa !24
  %333 = tail call float @llvm.fmuladd.f32(float %283, float %332, float %330)
  store float %333, ptr %329, align 4, !tbaa !24
  %334 = add nuw nsw i64 %285, 8
  %335 = add i64 %286, 8
  %336 = icmp eq i64 %335, %260
  br i1 %336, label %337, label %284, !llvm.loop !42

337:                                              ; preds = %284, %278
  %338 = phi i64 [ 0, %278 ], [ %334, %284 ]
  br i1 %261, label %350, label %339

339:                                              ; preds = %337, %339
  %340 = phi i64 [ %347, %339 ], [ %338, %337 ]
  %341 = phi i64 [ %348, %339 ], [ 0, %337 ]
  %342 = getelementptr inbounds float, ptr %280, i64 %340
  %343 = load float, ptr %342, align 4, !tbaa !24
  %344 = getelementptr inbounds float, ptr %224, i64 %340
  %345 = load float, ptr %344, align 4, !tbaa !24
  %346 = tail call float @llvm.fmuladd.f32(float %283, float %345, float %343)
  store float %346, ptr %342, align 4, !tbaa !24
  %347 = add nuw nsw i64 %340, 1
  %348 = add i64 %341, 1
  %349 = icmp eq i64 %348, %258
  br i1 %349, label %350, label %339, !llvm.loop !43

350:                                              ; preds = %337, %339, %274
  %351 = or i64 %275, 1
  %352 = icmp eq i64 %351, %251
  br i1 %352, label %425, label %353

353:                                              ; preds = %350
  %354 = getelementptr inbounds %"class.std::vector.0", ptr %220, i64 %351
  %355 = load ptr, ptr %354, align 8, !tbaa !13
  %356 = getelementptr inbounds float, ptr %355, i64 %223
  %357 = load float, ptr %356, align 4, !tbaa !24
  %358 = fneg float %357
  br i1 %263, label %412, label %359

359:                                              ; preds = %353, %359
  %360 = phi i64 [ %409, %359 ], [ 0, %353 ]
  %361 = phi i64 [ %410, %359 ], [ 0, %353 ]
  %362 = getelementptr inbounds float, ptr %355, i64 %360
  %363 = load float, ptr %362, align 4, !tbaa !24
  %364 = getelementptr inbounds float, ptr %224, i64 %360
  %365 = load float, ptr %364, align 4, !tbaa !24
  %366 = tail call float @llvm.fmuladd.f32(float %358, float %365, float %363)
  store float %366, ptr %362, align 4, !tbaa !24
  %367 = or i64 %360, 1
  %368 = getelementptr inbounds float, ptr %355, i64 %367
  %369 = load float, ptr %368, align 4, !tbaa !24
  %370 = getelementptr inbounds float, ptr %224, i64 %367
  %371 = load float, ptr %370, align 4, !tbaa !24
  %372 = tail call float @llvm.fmuladd.f32(float %358, float %371, float %369)
  store float %372, ptr %368, align 4, !tbaa !24
  %373 = or i64 %360, 2
  %374 = getelementptr inbounds float, ptr %355, i64 %373
  %375 = load float, ptr %374, align 4, !tbaa !24
  %376 = getelementptr inbounds float, ptr %224, i64 %373
  %377 = load float, ptr %376, align 4, !tbaa !24
  %378 = tail call float @llvm.fmuladd.f32(float %358, float %377, float %375)
  store float %378, ptr %374, align 4, !tbaa !24
  %379 = or i64 %360, 3
  %380 = getelementptr inbounds float, ptr %355, i64 %379
  %381 = load float, ptr %380, align 4, !tbaa !24
  %382 = getelementptr inbounds float, ptr %224, i64 %379
  %383 = load float, ptr %382, align 4, !tbaa !24
  %384 = tail call float @llvm.fmuladd.f32(float %358, float %383, float %381)
  store float %384, ptr %380, align 4, !tbaa !24
  %385 = or i64 %360, 4
  %386 = getelementptr inbounds float, ptr %355, i64 %385
  %387 = load float, ptr %386, align 4, !tbaa !24
  %388 = getelementptr inbounds float, ptr %224, i64 %385
  %389 = load float, ptr %388, align 4, !tbaa !24
  %390 = tail call float @llvm.fmuladd.f32(float %358, float %389, float %387)
  store float %390, ptr %386, align 4, !tbaa !24
  %391 = or i64 %360, 5
  %392 = getelementptr inbounds float, ptr %355, i64 %391
  %393 = load float, ptr %392, align 4, !tbaa !24
  %394 = getelementptr inbounds float, ptr %224, i64 %391
  %395 = load float, ptr %394, align 4, !tbaa !24
  %396 = tail call float @llvm.fmuladd.f32(float %358, float %395, float %393)
  store float %396, ptr %392, align 4, !tbaa !24
  %397 = or i64 %360, 6
  %398 = getelementptr inbounds float, ptr %355, i64 %397
  %399 = load float, ptr %398, align 4, !tbaa !24
  %400 = getelementptr inbounds float, ptr %224, i64 %397
  %401 = load float, ptr %400, align 4, !tbaa !24
  %402 = tail call float @llvm.fmuladd.f32(float %358, float %401, float %399)
  store float %402, ptr %398, align 4, !tbaa !24
  %403 = or i64 %360, 7
  %404 = getelementptr inbounds float, ptr %355, i64 %403
  %405 = load float, ptr %404, align 4, !tbaa !24
  %406 = getelementptr inbounds float, ptr %224, i64 %403
  %407 = load float, ptr %406, align 4, !tbaa !24
  %408 = tail call float @llvm.fmuladd.f32(float %358, float %407, float %405)
  store float %408, ptr %404, align 4, !tbaa !24
  %409 = add nuw nsw i64 %360, 8
  %410 = add i64 %361, 8
  %411 = icmp eq i64 %410, %264
  br i1 %411, label %412, label %359, !llvm.loop !42

412:                                              ; preds = %359, %353
  %413 = phi i64 [ 0, %353 ], [ %409, %359 ]
  br i1 %265, label %425, label %414

414:                                              ; preds = %412, %414
  %415 = phi i64 [ %422, %414 ], [ %413, %412 ]
  %416 = phi i64 [ %423, %414 ], [ 0, %412 ]
  %417 = getelementptr inbounds float, ptr %355, i64 %415
  %418 = load float, ptr %417, align 4, !tbaa !24
  %419 = getelementptr inbounds float, ptr %224, i64 %415
  %420 = load float, ptr %419, align 4, !tbaa !24
  %421 = tail call float @llvm.fmuladd.f32(float %358, float %420, float %418)
  store float %421, ptr %417, align 4, !tbaa !24
  %422 = add nuw nsw i64 %415, 1
  %423 = add i64 %416, 1
  %424 = icmp eq i64 %423, %262
  br i1 %424, label %425, label %414, !llvm.loop !43

425:                                              ; preds = %412, %414, %350
  %426 = or i64 %275, 2
  %427 = icmp eq i64 %426, %251
  br i1 %427, label %500, label %428

428:                                              ; preds = %425
  %429 = getelementptr inbounds %"class.std::vector.0", ptr %220, i64 %426
  %430 = load ptr, ptr %429, align 8, !tbaa !13
  %431 = getelementptr inbounds float, ptr %430, i64 %223
  %432 = load float, ptr %431, align 4, !tbaa !24
  %433 = fneg float %432
  br i1 %267, label %487, label %434

434:                                              ; preds = %428, %434
  %435 = phi i64 [ %484, %434 ], [ 0, %428 ]
  %436 = phi i64 [ %485, %434 ], [ 0, %428 ]
  %437 = getelementptr inbounds float, ptr %430, i64 %435
  %438 = load float, ptr %437, align 4, !tbaa !24
  %439 = getelementptr inbounds float, ptr %224, i64 %435
  %440 = load float, ptr %439, align 4, !tbaa !24
  %441 = tail call float @llvm.fmuladd.f32(float %433, float %440, float %438)
  store float %441, ptr %437, align 4, !tbaa !24
  %442 = or i64 %435, 1
  %443 = getelementptr inbounds float, ptr %430, i64 %442
  %444 = load float, ptr %443, align 4, !tbaa !24
  %445 = getelementptr inbounds float, ptr %224, i64 %442
  %446 = load float, ptr %445, align 4, !tbaa !24
  %447 = tail call float @llvm.fmuladd.f32(float %433, float %446, float %444)
  store float %447, ptr %443, align 4, !tbaa !24
  %448 = or i64 %435, 2
  %449 = getelementptr inbounds float, ptr %430, i64 %448
  %450 = load float, ptr %449, align 4, !tbaa !24
  %451 = getelementptr inbounds float, ptr %224, i64 %448
  %452 = load float, ptr %451, align 4, !tbaa !24
  %453 = tail call float @llvm.fmuladd.f32(float %433, float %452, float %450)
  store float %453, ptr %449, align 4, !tbaa !24
  %454 = or i64 %435, 3
  %455 = getelementptr inbounds float, ptr %430, i64 %454
  %456 = load float, ptr %455, align 4, !tbaa !24
  %457 = getelementptr inbounds float, ptr %224, i64 %454
  %458 = load float, ptr %457, align 4, !tbaa !24
  %459 = tail call float @llvm.fmuladd.f32(float %433, float %458, float %456)
  store float %459, ptr %455, align 4, !tbaa !24
  %460 = or i64 %435, 4
  %461 = getelementptr inbounds float, ptr %430, i64 %460
  %462 = load float, ptr %461, align 4, !tbaa !24
  %463 = getelementptr inbounds float, ptr %224, i64 %460
  %464 = load float, ptr %463, align 4, !tbaa !24
  %465 = tail call float @llvm.fmuladd.f32(float %433, float %464, float %462)
  store float %465, ptr %461, align 4, !tbaa !24
  %466 = or i64 %435, 5
  %467 = getelementptr inbounds float, ptr %430, i64 %466
  %468 = load float, ptr %467, align 4, !tbaa !24
  %469 = getelementptr inbounds float, ptr %224, i64 %466
  %470 = load float, ptr %469, align 4, !tbaa !24
  %471 = tail call float @llvm.fmuladd.f32(float %433, float %470, float %468)
  store float %471, ptr %467, align 4, !tbaa !24
  %472 = or i64 %435, 6
  %473 = getelementptr inbounds float, ptr %430, i64 %472
  %474 = load float, ptr %473, align 4, !tbaa !24
  %475 = getelementptr inbounds float, ptr %224, i64 %472
  %476 = load float, ptr %475, align 4, !tbaa !24
  %477 = tail call float @llvm.fmuladd.f32(float %433, float %476, float %474)
  store float %477, ptr %473, align 4, !tbaa !24
  %478 = or i64 %435, 7
  %479 = getelementptr inbounds float, ptr %430, i64 %478
  %480 = load float, ptr %479, align 4, !tbaa !24
  %481 = getelementptr inbounds float, ptr %224, i64 %478
  %482 = load float, ptr %481, align 4, !tbaa !24
  %483 = tail call float @llvm.fmuladd.f32(float %433, float %482, float %480)
  store float %483, ptr %479, align 4, !tbaa !24
  %484 = add nuw nsw i64 %435, 8
  %485 = add i64 %436, 8
  %486 = icmp eq i64 %485, %268
  br i1 %486, label %487, label %434, !llvm.loop !42

487:                                              ; preds = %434, %428
  %488 = phi i64 [ 0, %428 ], [ %484, %434 ]
  br i1 %269, label %500, label %489

489:                                              ; preds = %487, %489
  %490 = phi i64 [ %497, %489 ], [ %488, %487 ]
  %491 = phi i64 [ %498, %489 ], [ 0, %487 ]
  %492 = getelementptr inbounds float, ptr %430, i64 %490
  %493 = load float, ptr %492, align 4, !tbaa !24
  %494 = getelementptr inbounds float, ptr %224, i64 %490
  %495 = load float, ptr %494, align 4, !tbaa !24
  %496 = tail call float @llvm.fmuladd.f32(float %433, float %495, float %493)
  store float %496, ptr %492, align 4, !tbaa !24
  %497 = add nuw nsw i64 %490, 1
  %498 = add i64 %491, 1
  %499 = icmp eq i64 %498, %266
  br i1 %499, label %500, label %489, !llvm.loop !43

500:                                              ; preds = %487, %489, %425
  %501 = or i64 %275, 3
  %502 = icmp eq i64 %501, %251
  br i1 %502, label %575, label %503

503:                                              ; preds = %500
  %504 = getelementptr inbounds %"class.std::vector.0", ptr %220, i64 %501
  %505 = load ptr, ptr %504, align 8, !tbaa !13
  %506 = getelementptr inbounds float, ptr %505, i64 %223
  %507 = load float, ptr %506, align 4, !tbaa !24
  %508 = fneg float %507
  br i1 %271, label %562, label %509

509:                                              ; preds = %503, %509
  %510 = phi i64 [ %559, %509 ], [ 0, %503 ]
  %511 = phi i64 [ %560, %509 ], [ 0, %503 ]
  %512 = getelementptr inbounds float, ptr %505, i64 %510
  %513 = load float, ptr %512, align 4, !tbaa !24
  %514 = getelementptr inbounds float, ptr %224, i64 %510
  %515 = load float, ptr %514, align 4, !tbaa !24
  %516 = tail call float @llvm.fmuladd.f32(float %508, float %515, float %513)
  store float %516, ptr %512, align 4, !tbaa !24
  %517 = or i64 %510, 1
  %518 = getelementptr inbounds float, ptr %505, i64 %517
  %519 = load float, ptr %518, align 4, !tbaa !24
  %520 = getelementptr inbounds float, ptr %224, i64 %517
  %521 = load float, ptr %520, align 4, !tbaa !24
  %522 = tail call float @llvm.fmuladd.f32(float %508, float %521, float %519)
  store float %522, ptr %518, align 4, !tbaa !24
  %523 = or i64 %510, 2
  %524 = getelementptr inbounds float, ptr %505, i64 %523
  %525 = load float, ptr %524, align 4, !tbaa !24
  %526 = getelementptr inbounds float, ptr %224, i64 %523
  %527 = load float, ptr %526, align 4, !tbaa !24
  %528 = tail call float @llvm.fmuladd.f32(float %508, float %527, float %525)
  store float %528, ptr %524, align 4, !tbaa !24
  %529 = or i64 %510, 3
  %530 = getelementptr inbounds float, ptr %505, i64 %529
  %531 = load float, ptr %530, align 4, !tbaa !24
  %532 = getelementptr inbounds float, ptr %224, i64 %529
  %533 = load float, ptr %532, align 4, !tbaa !24
  %534 = tail call float @llvm.fmuladd.f32(float %508, float %533, float %531)
  store float %534, ptr %530, align 4, !tbaa !24
  %535 = or i64 %510, 4
  %536 = getelementptr inbounds float, ptr %505, i64 %535
  %537 = load float, ptr %536, align 4, !tbaa !24
  %538 = getelementptr inbounds float, ptr %224, i64 %535
  %539 = load float, ptr %538, align 4, !tbaa !24
  %540 = tail call float @llvm.fmuladd.f32(float %508, float %539, float %537)
  store float %540, ptr %536, align 4, !tbaa !24
  %541 = or i64 %510, 5
  %542 = getelementptr inbounds float, ptr %505, i64 %541
  %543 = load float, ptr %542, align 4, !tbaa !24
  %544 = getelementptr inbounds float, ptr %224, i64 %541
  %545 = load float, ptr %544, align 4, !tbaa !24
  %546 = tail call float @llvm.fmuladd.f32(float %508, float %545, float %543)
  store float %546, ptr %542, align 4, !tbaa !24
  %547 = or i64 %510, 6
  %548 = getelementptr inbounds float, ptr %505, i64 %547
  %549 = load float, ptr %548, align 4, !tbaa !24
  %550 = getelementptr inbounds float, ptr %224, i64 %547
  %551 = load float, ptr %550, align 4, !tbaa !24
  %552 = tail call float @llvm.fmuladd.f32(float %508, float %551, float %549)
  store float %552, ptr %548, align 4, !tbaa !24
  %553 = or i64 %510, 7
  %554 = getelementptr inbounds float, ptr %505, i64 %553
  %555 = load float, ptr %554, align 4, !tbaa !24
  %556 = getelementptr inbounds float, ptr %224, i64 %553
  %557 = load float, ptr %556, align 4, !tbaa !24
  %558 = tail call float @llvm.fmuladd.f32(float %508, float %557, float %555)
  store float %558, ptr %554, align 4, !tbaa !24
  %559 = add nuw nsw i64 %510, 8
  %560 = add i64 %511, 8
  %561 = icmp eq i64 %560, %272
  br i1 %561, label %562, label %509, !llvm.loop !42

562:                                              ; preds = %509, %503
  %563 = phi i64 [ 0, %503 ], [ %559, %509 ]
  br i1 %273, label %575, label %564

564:                                              ; preds = %562, %564
  %565 = phi i64 [ %572, %564 ], [ %563, %562 ]
  %566 = phi i64 [ %573, %564 ], [ 0, %562 ]
  %567 = getelementptr inbounds float, ptr %505, i64 %565
  %568 = load float, ptr %567, align 4, !tbaa !24
  %569 = getelementptr inbounds float, ptr %224, i64 %565
  %570 = load float, ptr %569, align 4, !tbaa !24
  %571 = tail call float @llvm.fmuladd.f32(float %508, float %570, float %568)
  store float %571, ptr %567, align 4, !tbaa !24
  %572 = add nuw nsw i64 %565, 1
  %573 = add i64 %566, 1
  %574 = icmp eq i64 %573, %270
  br i1 %574, label %575, label %564, !llvm.loop !43

575:                                              ; preds = %562, %564, %500
  %576 = add nuw nsw i64 %275, 4
  %577 = add i64 %276, 4
  %578 = icmp eq i64 %577, %257
  br i1 %578, label %616, label %274, !llvm.loop !44

579:                                              ; preds = %579, %233
  %580 = phi i64 [ 0, %233 ], [ %613, %579 ]
  %581 = phi i64 [ 0, %233 ], [ %614, %579 ]
  %582 = getelementptr inbounds float, ptr %224, i64 %580
  %583 = load float, ptr %582, align 4, !tbaa !24
  %584 = fdiv float %583, %226
  store float %584, ptr %582, align 4, !tbaa !24
  %585 = or i64 %580, 1
  %586 = getelementptr inbounds float, ptr %224, i64 %585
  %587 = load float, ptr %586, align 4, !tbaa !24
  %588 = fdiv float %587, %226
  store float %588, ptr %586, align 4, !tbaa !24
  %589 = or i64 %580, 2
  %590 = getelementptr inbounds float, ptr %224, i64 %589
  %591 = load float, ptr %590, align 4, !tbaa !24
  %592 = fdiv float %591, %226
  store float %592, ptr %590, align 4, !tbaa !24
  %593 = or i64 %580, 3
  %594 = getelementptr inbounds float, ptr %224, i64 %593
  %595 = load float, ptr %594, align 4, !tbaa !24
  %596 = fdiv float %595, %226
  store float %596, ptr %594, align 4, !tbaa !24
  %597 = or i64 %580, 4
  %598 = getelementptr inbounds float, ptr %224, i64 %597
  %599 = load float, ptr %598, align 4, !tbaa !24
  %600 = fdiv float %599, %226
  store float %600, ptr %598, align 4, !tbaa !24
  %601 = or i64 %580, 5
  %602 = getelementptr inbounds float, ptr %224, i64 %601
  %603 = load float, ptr %602, align 4, !tbaa !24
  %604 = fdiv float %603, %226
  store float %604, ptr %602, align 4, !tbaa !24
  %605 = or i64 %580, 6
  %606 = getelementptr inbounds float, ptr %224, i64 %605
  %607 = load float, ptr %606, align 4, !tbaa !24
  %608 = fdiv float %607, %226
  store float %608, ptr %606, align 4, !tbaa !24
  %609 = or i64 %580, 7
  %610 = getelementptr inbounds float, ptr %224, i64 %609
  %611 = load float, ptr %610, align 4, !tbaa !24
  %612 = fdiv float %611, %226
  store float %612, ptr %610, align 4, !tbaa !24
  %613 = add nuw nsw i64 %580, 8
  %614 = add i64 %581, 8
  %615 = icmp eq i64 %614, %234
  br i1 %615, label %235, label %579, !llvm.loop !45

616:                                              ; preds = %575, %250
  %617 = phi i64 [ 0, %250 ], [ %576, %575 ]
  %618 = icmp eq i64 %254, 0
  br i1 %618, label %704, label %619

619:                                              ; preds = %616
  %620 = and i64 %17, 7
  %621 = icmp ult i64 %230, 7
  %622 = sub nsw i64 %229, %620
  %623 = icmp eq i64 %620, 0
  br label %624

624:                                              ; preds = %700, %619
  %625 = phi i64 [ %617, %619 ], [ %701, %700 ]
  %626 = phi i64 [ 0, %619 ], [ %702, %700 ]
  %627 = icmp eq i64 %625, %251
  br i1 %627, label %700, label %628

628:                                              ; preds = %624
  %629 = getelementptr inbounds %"class.std::vector.0", ptr %220, i64 %625
  %630 = load ptr, ptr %629, align 8, !tbaa !13
  %631 = getelementptr inbounds float, ptr %630, i64 %223
  %632 = load float, ptr %631, align 4, !tbaa !24
  %633 = fneg float %632
  br i1 %621, label %687, label %634

634:                                              ; preds = %628, %634
  %635 = phi i64 [ %684, %634 ], [ 0, %628 ]
  %636 = phi i64 [ %685, %634 ], [ 0, %628 ]
  %637 = getelementptr inbounds float, ptr %630, i64 %635
  %638 = load float, ptr %637, align 4, !tbaa !24
  %639 = getelementptr inbounds float, ptr %224, i64 %635
  %640 = load float, ptr %639, align 4, !tbaa !24
  %641 = tail call float @llvm.fmuladd.f32(float %633, float %640, float %638)
  store float %641, ptr %637, align 4, !tbaa !24
  %642 = or i64 %635, 1
  %643 = getelementptr inbounds float, ptr %630, i64 %642
  %644 = load float, ptr %643, align 4, !tbaa !24
  %645 = getelementptr inbounds float, ptr %224, i64 %642
  %646 = load float, ptr %645, align 4, !tbaa !24
  %647 = tail call float @llvm.fmuladd.f32(float %633, float %646, float %644)
  store float %647, ptr %643, align 4, !tbaa !24
  %648 = or i64 %635, 2
  %649 = getelementptr inbounds float, ptr %630, i64 %648
  %650 = load float, ptr %649, align 4, !tbaa !24
  %651 = getelementptr inbounds float, ptr %224, i64 %648
  %652 = load float, ptr %651, align 4, !tbaa !24
  %653 = tail call float @llvm.fmuladd.f32(float %633, float %652, float %650)
  store float %653, ptr %649, align 4, !tbaa !24
  %654 = or i64 %635, 3
  %655 = getelementptr inbounds float, ptr %630, i64 %654
  %656 = load float, ptr %655, align 4, !tbaa !24
  %657 = getelementptr inbounds float, ptr %224, i64 %654
  %658 = load float, ptr %657, align 4, !tbaa !24
  %659 = tail call float @llvm.fmuladd.f32(float %633, float %658, float %656)
  store float %659, ptr %655, align 4, !tbaa !24
  %660 = or i64 %635, 4
  %661 = getelementptr inbounds float, ptr %630, i64 %660
  %662 = load float, ptr %661, align 4, !tbaa !24
  %663 = getelementptr inbounds float, ptr %224, i64 %660
  %664 = load float, ptr %663, align 4, !tbaa !24
  %665 = tail call float @llvm.fmuladd.f32(float %633, float %664, float %662)
  store float %665, ptr %661, align 4, !tbaa !24
  %666 = or i64 %635, 5
  %667 = getelementptr inbounds float, ptr %630, i64 %666
  %668 = load float, ptr %667, align 4, !tbaa !24
  %669 = getelementptr inbounds float, ptr %224, i64 %666
  %670 = load float, ptr %669, align 4, !tbaa !24
  %671 = tail call float @llvm.fmuladd.f32(float %633, float %670, float %668)
  store float %671, ptr %667, align 4, !tbaa !24
  %672 = or i64 %635, 6
  %673 = getelementptr inbounds float, ptr %630, i64 %672
  %674 = load float, ptr %673, align 4, !tbaa !24
  %675 = getelementptr inbounds float, ptr %224, i64 %672
  %676 = load float, ptr %675, align 4, !tbaa !24
  %677 = tail call float @llvm.fmuladd.f32(float %633, float %676, float %674)
  store float %677, ptr %673, align 4, !tbaa !24
  %678 = or i64 %635, 7
  %679 = getelementptr inbounds float, ptr %630, i64 %678
  %680 = load float, ptr %679, align 4, !tbaa !24
  %681 = getelementptr inbounds float, ptr %224, i64 %678
  %682 = load float, ptr %681, align 4, !tbaa !24
  %683 = tail call float @llvm.fmuladd.f32(float %633, float %682, float %680)
  store float %683, ptr %679, align 4, !tbaa !24
  %684 = add nuw nsw i64 %635, 8
  %685 = add i64 %636, 8
  %686 = icmp eq i64 %685, %622
  br i1 %686, label %687, label %634, !llvm.loop !42

687:                                              ; preds = %634, %628
  %688 = phi i64 [ 0, %628 ], [ %684, %634 ]
  br i1 %623, label %700, label %689

689:                                              ; preds = %687, %689
  %690 = phi i64 [ %697, %689 ], [ %688, %687 ]
  %691 = phi i64 [ %698, %689 ], [ 0, %687 ]
  %692 = getelementptr inbounds float, ptr %630, i64 %690
  %693 = load float, ptr %692, align 4, !tbaa !24
  %694 = getelementptr inbounds float, ptr %224, i64 %690
  %695 = load float, ptr %694, align 4, !tbaa !24
  %696 = tail call float @llvm.fmuladd.f32(float %633, float %695, float %693)
  store float %696, ptr %692, align 4, !tbaa !24
  %697 = add nuw nsw i64 %690, 1
  %698 = add i64 %691, 1
  %699 = icmp eq i64 %698, %620
  br i1 %699, label %700, label %689, !llvm.loop !43

700:                                              ; preds = %687, %689, %624
  %701 = add nuw nsw i64 %625, 1
  %702 = add i64 %626, 1
  %703 = icmp eq i64 %702, %254
  br i1 %703, label %704, label %624, !llvm.loop !46

704:                                              ; preds = %616, %700, %247, %211
  %705 = icmp eq ptr %212, null
  br i1 %705, label %707, label %706

706:                                              ; preds = %704
  tail call void @_ZdlPv(ptr noundef nonnull %212) #19
  br label %707

707:                                              ; preds = %704, %706
  %708 = icmp eq ptr %42, null
  br i1 %708, label %710, label %709

709:                                              ; preds = %707
  tail call void @_ZdlPv(ptr noundef nonnull %42) #19
  br label %710

710:                                              ; preds = %707, %709
  ret void

711:                                              ; preds = %131
  tail call void @_ZdlPv(ptr noundef nonnull %42) #19
  br label %712

712:                                              ; preds = %131, %711
  resume { ptr, i32 } %132
}
