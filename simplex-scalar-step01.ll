; Function Attrs: uwtable
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
  %16 = lshr exact i64 %15, 2
  %17 = trunc i64 %16 to i32
  %18 = add nsw i32 %9, -1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %"class.std::vector.0", ptr %4, i64 %19
  %21 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = load ptr, ptr %20, align 8, !tbaa !13
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = icmp eq ptr %22, %23
  br i1 %27, label %40, label %28

28:                                               ; preds = %1
  %29 = icmp ugt i64 %26, 9223372036854775804
  br i1 %29, label %30, label %31, !prof !35

30:                                               ; preds = %28
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

31:                                               ; preds = %28
  %32 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %26) #17
  %33 = load ptr, ptr %20, align 8, !tbaa !36
  %34 = load ptr, ptr %21, align 8, !tbaa !36
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = ptrtoint ptr %34 to i64
  %38 = ptrtoint ptr %33 to i64
  %39 = sub i64 %37, %38
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %32, ptr align 4 %33, i64 %39, i1 false)
  br label %40

40:                                               ; preds = %1, %31, %36
  %41 = phi ptr [ %32, %31 ], [ %32, %36 ], [ null, %1 ]
  %42 = load ptr, ptr %0, align 8, !tbaa !10
  %43 = getelementptr inbounds %"class.std::vector.0", ptr %42, i64 %19
  %44 = load ptr, ptr %43, align 8, !tbaa !36
  %45 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %43, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !36
  %47 = icmp eq ptr %44, %46
  %48 = getelementptr inbounds float, ptr %44, i64 1
  %49 = icmp eq ptr %48, %46
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %40
  %52 = load float, ptr %44, align 4, !tbaa !24
  br label %53

53:                                               ; preds = %53, %51
  %54 = phi float [ %59, %53 ], [ %52, %51 ]
  %55 = phi ptr [ %61, %53 ], [ %48, %51 ]
  %56 = phi ptr [ %60, %53 ], [ %44, %51 ]
  %57 = load float, ptr %55, align 4, !tbaa !24
  %58 = fcmp olt float %57, %54
  %59 = select i1 %58, float %57, float %54
  %60 = select i1 %58, ptr %55, ptr %56
  %61 = getelementptr inbounds float, ptr %55, i64 1
  %62 = icmp eq ptr %61, %46
  br i1 %62, label %63, label %53, !llvm.loop !37

63:                                               ; preds = %53, %40
  %64 = phi ptr [ %44, %40 ], [ %60, %53 ]
  %65 = ptrtoint ptr %64 to i64
  %66 = ptrtoint ptr %44 to i64
  %67 = sub i64 %65, %66
  %68 = icmp slt i32 %9, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
          to label %70 unwind label %130

70:                                               ; preds = %69
  unreachable

71:                                               ; preds = %63
  %72 = icmp eq i32 %18, 0
  br i1 %72, label %210, label %73

73:                                               ; preds = %71
  %74 = shl nuw nsw i64 %19, 2
  %75 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %74) #17
          to label %76 unwind label %130

76:                                               ; preds = %73
  store float 0.000000e+00, ptr %75, align 4, !tbaa !24
  %77 = getelementptr float, ptr %75, i64 1
  %78 = icmp eq i32 %18, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds float, ptr %75, i64 %19
  %81 = add nsw i64 %74, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %77, i8 0, i64 %81, i1 false), !tbaa !24
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi ptr [ %80, %79 ], [ %77, %76 ]
  %84 = load ptr, ptr %0, align 8, !tbaa !10
  %85 = shl i64 %15, 30
  %86 = add i64 %85, -4294967296
  %87 = ashr exact i64 %86, 32
  %88 = shl i64 %67, 30
  %89 = ashr exact i64 %88, 32
  %90 = zext i32 %18 to i64
  %91 = add nsw i64 %90, -1
  %92 = and i64 %90, 7
  %93 = icmp ult i64 %91, 7
  br i1 %93, label %96, label %94

94:                                               ; preds = %82
  %95 = and i64 %90, 4294967288
  br label %133

96:                                               ; preds = %133, %82
  %97 = phi i64 [ 0, %82 ], [ %207, %133 ]
  %98 = icmp eq i64 %92, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %96, %99
  %100 = phi i64 [ %110, %99 ], [ %97, %96 ]
  %101 = phi i64 [ %111, %99 ], [ 0, %96 ]
  %102 = getelementptr inbounds %"class.std::vector.0", ptr %84, i64 %100
  %103 = load ptr, ptr %102, align 8, !tbaa !13
  %104 = getelementptr inbounds float, ptr %103, i64 %87
  %105 = load float, ptr %104, align 4, !tbaa !24
  %106 = getelementptr inbounds float, ptr %103, i64 %89
  %107 = load float, ptr %106, align 4, !tbaa !24
  %108 = fdiv float %105, %107
  %109 = getelementptr inbounds float, ptr %75, i64 %100
  store float %108, ptr %109, align 4, !tbaa !24
  %110 = add nuw nsw i64 %100, 1
  %111 = add i64 %101, 1
  %112 = icmp eq i64 %111, %92
  br i1 %112, label %113, label %99, !llvm.loop !38

113:                                              ; preds = %99, %96
  %114 = icmp eq ptr %75, %83
  %115 = getelementptr inbounds float, ptr %75, i64 1
  %116 = icmp eq ptr %115, %83
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %210, label %118

118:                                              ; preds = %113
  %119 = load float, ptr %75, align 4, !tbaa !24
  br label %120

120:                                              ; preds = %120, %118
  %121 = phi float [ %126, %120 ], [ %119, %118 ]
  %122 = phi ptr [ %128, %120 ], [ %115, %118 ]
  %123 = phi ptr [ %127, %120 ], [ %75, %118 ]
  %124 = load float, ptr %122, align 4, !tbaa !24
  %125 = fcmp olt float %124, %121
  %126 = select i1 %125, float %124, float %121
  %127 = select i1 %125, ptr %122, ptr %123
  %128 = getelementptr inbounds float, ptr %122, i64 1
  %129 = icmp eq ptr %128, %83
  br i1 %129, label %210, label %120, !llvm.loop !37

130:                                              ; preds = %73, %69
  %131 = landingpad { ptr, i32 }
          cleanup
  %132 = icmp eq ptr %41, null
  br i1 %132, label %290, label %289

133:                                              ; preds = %133, %94
  %134 = phi i64 [ 0, %94 ], [ %207, %133 ]
  %135 = phi i64 [ 0, %94 ], [ %208, %133 ]
  %136 = getelementptr inbounds %"class.std::vector.0", ptr %84, i64 %134
  %137 = load ptr, ptr %136, align 8, !tbaa !13
  %138 = getelementptr inbounds float, ptr %137, i64 %87
  %139 = load float, ptr %138, align 4, !tbaa !24
  %140 = getelementptr inbounds float, ptr %137, i64 %89
  %141 = load float, ptr %140, align 4, !tbaa !24
  %142 = fdiv float %139, %141
  %143 = getelementptr inbounds float, ptr %75, i64 %134
  store float %142, ptr %143, align 4, !tbaa !24
  %144 = or i64 %134, 1
  %145 = getelementptr inbounds %"class.std::vector.0", ptr %84, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !13
  %147 = getelementptr inbounds float, ptr %146, i64 %87
  %148 = load float, ptr %147, align 4, !tbaa !24
  %149 = getelementptr inbounds float, ptr %146, i64 %89
  %150 = load float, ptr %149, align 4, !tbaa !24
  %151 = fdiv float %148, %150
  %152 = getelementptr inbounds float, ptr %75, i64 %144
  store float %151, ptr %152, align 4, !tbaa !24
  %153 = or i64 %134, 2
  %154 = getelementptr inbounds %"class.std::vector.0", ptr %84, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !13
  %156 = getelementptr inbounds float, ptr %155, i64 %87
  %157 = load float, ptr %156, align 4, !tbaa !24
  %158 = getelementptr inbounds float, ptr %155, i64 %89
  %159 = load float, ptr %158, align 4, !tbaa !24
  %160 = fdiv float %157, %159
  %161 = getelementptr inbounds float, ptr %75, i64 %153
  store float %160, ptr %161, align 4, !tbaa !24
  %162 = or i64 %134, 3
  %163 = getelementptr inbounds %"class.std::vector.0", ptr %84, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !13
  %165 = getelementptr inbounds float, ptr %164, i64 %87
  %166 = load float, ptr %165, align 4, !tbaa !24
  %167 = getelementptr inbounds float, ptr %164, i64 %89
  %168 = load float, ptr %167, align 4, !tbaa !24
  %169 = fdiv float %166, %168
  %170 = getelementptr inbounds float, ptr %75, i64 %162
  store float %169, ptr %170, align 4, !tbaa !24
  %171 = or i64 %134, 4
  %172 = getelementptr inbounds %"class.std::vector.0", ptr %84, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !13
  %174 = getelementptr inbounds float, ptr %173, i64 %87
  %175 = load float, ptr %174, align 4, !tbaa !24
  %176 = getelementptr inbounds float, ptr %173, i64 %89
  %177 = load float, ptr %176, align 4, !tbaa !24
  %178 = fdiv float %175, %177
  %179 = getelementptr inbounds float, ptr %75, i64 %171
  store float %178, ptr %179, align 4, !tbaa !24
  %180 = or i64 %134, 5
  %181 = getelementptr inbounds %"class.std::vector.0", ptr %84, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !13
  %183 = getelementptr inbounds float, ptr %182, i64 %87
  %184 = load float, ptr %183, align 4, !tbaa !24
  %185 = getelementptr inbounds float, ptr %182, i64 %89
  %186 = load float, ptr %185, align 4, !tbaa !24
  %187 = fdiv float %184, %186
  %188 = getelementptr inbounds float, ptr %75, i64 %180
  store float %187, ptr %188, align 4, !tbaa !24
  %189 = or i64 %134, 6
  %190 = getelementptr inbounds %"class.std::vector.0", ptr %84, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !13
  %192 = getelementptr inbounds float, ptr %191, i64 %87
  %193 = load float, ptr %192, align 4, !tbaa !24
  %194 = getelementptr inbounds float, ptr %191, i64 %89
  %195 = load float, ptr %194, align 4, !tbaa !24
  %196 = fdiv float %193, %195
  %197 = getelementptr inbounds float, ptr %75, i64 %189
  store float %196, ptr %197, align 4, !tbaa !24
  %198 = or i64 %134, 7
  %199 = getelementptr inbounds %"class.std::vector.0", ptr %84, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !13
  %201 = getelementptr inbounds float, ptr %200, i64 %87
  %202 = load float, ptr %201, align 4, !tbaa !24
  %203 = getelementptr inbounds float, ptr %200, i64 %89
  %204 = load float, ptr %203, align 4, !tbaa !24
  %205 = fdiv float %202, %204
  %206 = getelementptr inbounds float, ptr %75, i64 %198
  store float %205, ptr %206, align 4, !tbaa !24
  %207 = add nuw nsw i64 %134, 8
  %208 = add i64 %135, 8
  %209 = icmp eq i64 %208, %95
  br i1 %209, label %96, label %133, !llvm.loop !40

210:                                              ; preds = %120, %71, %113
  %211 = phi ptr [ %75, %113 ], [ null, %71 ], [ %75, %120 ]
  %212 = phi ptr [ %75, %113 ], [ null, %71 ], [ %127, %120 ]
  %213 = ptrtoint ptr %212 to i64
  %214 = ptrtoint ptr %211 to i64
  %215 = sub i64 %213, %214
  %216 = shl i64 %215, 30
  %217 = ashr exact i64 %216, 32
  %218 = load ptr, ptr %0, align 8, !tbaa !10
  %219 = getelementptr inbounds %"class.std::vector.0", ptr %218, i64 %217
  %220 = shl i64 %67, 30
  %221 = ashr exact i64 %220, 32
  %222 = load ptr, ptr %219, align 8, !tbaa !13
  %223 = getelementptr inbounds float, ptr %222, i64 %221
  %224 = load float, ptr %223, align 4, !tbaa !24
  %225 = icmp sgt i32 %17, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %210
  %227 = and i64 %16, 4294967295
  %228 = add nsw i64 %227, -1
  %229 = and i64 %16, 7
  %230 = icmp ult i64 %228, 7
  br i1 %230, label %233, label %231

231:                                              ; preds = %226
  %232 = sub nsw i64 %227, %229
  br label %252

233:                                              ; preds = %252, %226
  %234 = phi i64 [ 0, %226 ], [ %286, %252 ]
  %235 = icmp eq i64 %229, 0
  br i1 %235, label %245, label %236

236:                                              ; preds = %233, %236
  %237 = phi i64 [ %242, %236 ], [ %234, %233 ]
  %238 = phi i64 [ %243, %236 ], [ 0, %233 ]
  %239 = getelementptr inbounds float, ptr %222, i64 %237
  %240 = load float, ptr %239, align 4, !tbaa !24
  %241 = fdiv float %240, %224
  store float %241, ptr %239, align 4, !tbaa !24
  %242 = add nuw nsw i64 %237, 1
  %243 = add i64 %238, 1
  %244 = icmp eq i64 %243, %229
  br i1 %244, label %245, label %236, !llvm.loop !41

245:                                              ; preds = %233, %236, %210
  %246 = icmp eq ptr %211, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %245
  tail call void @_ZdlPv(ptr noundef nonnull %211) #18
  br label %248

248:                                              ; preds = %245, %247
  %249 = icmp eq ptr %41, null
  br i1 %249, label %251, label %250

250:                                              ; preds = %248
  tail call void @_ZdlPv(ptr noundef nonnull %41) #18
  br label %251

251:                                              ; preds = %248, %250
  ret void

252:                                              ; preds = %252, %231
  %253 = phi i64 [ 0, %231 ], [ %286, %252 ]
  %254 = phi i64 [ 0, %231 ], [ %287, %252 ]
  %255 = getelementptr inbounds float, ptr %222, i64 %253
  %256 = load float, ptr %255, align 4, !tbaa !24
  %257 = fdiv float %256, %224
  store float %257, ptr %255, align 4, !tbaa !24
  %258 = or i64 %253, 1
  %259 = getelementptr inbounds float, ptr %222, i64 %258
  %260 = load float, ptr %259, align 4, !tbaa !24
  %261 = fdiv float %260, %224
  store float %261, ptr %259, align 4, !tbaa !24
  %262 = or i64 %253, 2
  %263 = getelementptr inbounds float, ptr %222, i64 %262
  %264 = load float, ptr %263, align 4, !tbaa !24
  %265 = fdiv float %264, %224
  store float %265, ptr %263, align 4, !tbaa !24
  %266 = or i64 %253, 3
  %267 = getelementptr inbounds float, ptr %222, i64 %266
  %268 = load float, ptr %267, align 4, !tbaa !24
  %269 = fdiv float %268, %224
  store float %269, ptr %267, align 4, !tbaa !24
  %270 = or i64 %253, 4
  %271 = getelementptr inbounds float, ptr %222, i64 %270
  %272 = load float, ptr %271, align 4, !tbaa !24
  %273 = fdiv float %272, %224
  store float %273, ptr %271, align 4, !tbaa !24
  %274 = or i64 %253, 5
  %275 = getelementptr inbounds float, ptr %222, i64 %274
  %276 = load float, ptr %275, align 4, !tbaa !24
  %277 = fdiv float %276, %224
  store float %277, ptr %275, align 4, !tbaa !24
  %278 = or i64 %253, 6
  %279 = getelementptr inbounds float, ptr %222, i64 %278
  %280 = load float, ptr %279, align 4, !tbaa !24
  %281 = fdiv float %280, %224
  store float %281, ptr %279, align 4, !tbaa !24
  %282 = or i64 %253, 7
  %283 = getelementptr inbounds float, ptr %222, i64 %282
  %284 = load float, ptr %283, align 4, !tbaa !24
  %285 = fdiv float %284, %224
  store float %285, ptr %283, align 4, !tbaa !24
  %286 = add nuw nsw i64 %253, 8
  %287 = add i64 %254, 8
  %288 = icmp eq i64 %287, %232
  br i1 %288, label %233, label %252, !llvm.loop !42

289:                                              ; preds = %130
  tail call void @_ZdlPv(ptr noundef nonnull %41) #18
  br label %290

290:                                              ; preds = %130, %289
  resume { ptr, i32 } %131
}
