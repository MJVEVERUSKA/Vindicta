NDContentPage.OnToolTipsLoaded({143:"<div class=\"NDToolTip TClass LSQF\"><div class=\"TTSummary\">Primary commander AI object. This does evaluation, planning and execution of actions (based on CmdrAction.CmdrActions).&nbsp; Each &lt;Commander.AICommander&gt; needs one of these objects if it needs to perform actions.</div></div>",146:"<div class=\"NDToolTip TClass LSQF\"><div class=\"TTSummary\">ActionStateTransition variables.&nbsp; These are wrappers for variables so the value can be shared between multiple ActionStateTransitions.&nbsp; e.g. An output of one AST can be the input of another (such as the first AST selecting a target and the next AST giving a move order to the target), so the same AST_VAR can be assigned to both. When the first AST writes a value to the AST_VAR the other AST sees that change to its input immediately as they both refer to the same underlying value.&nbsp; They also allow the CmdrAction state to be pushed/popped during simulation so that real world actions are not effected.</div></div>",155:"<div class=\"NDToolTip TEnumeration LSQF\"><div class=\"TTSummary\">&lt;ActionStateTransitions&gt; are used by CmdrAction to transition between these states.</div></div>",158:"<div class=\"NDToolTip TConstant LSQF\"><div class=\"TTSummary\">Indicates the final state of a CmdrAction, once it is completed (successfully or not). The any final ASTs should transition TO this state.</div></div>",192:"<div class=\"NDToolTip TClass LSQF\"><div class=\"TTSummary\">Models either the real world state, or a derivation of it that can be used for simulation.</div></div>"});