module SkelLatte where

-- Haskell module generated by the BNF converter

import AbsLatte
import ErrM
type Result = Err String

failure :: Show a => a -> Result
failure x = Bad $ "Undefined case: " ++ show x

transIdent :: Ident -> Result
transIdent x = case x of
  Ident str  -> failure x


transProgram :: Program -> Result
transProgram x = case x of
  Program topdefs  -> failure x


transTopDef :: TopDef -> Result
transTopDef x = case x of
  FnTopDef fndef  -> failure x
  ClsDef id fields fndefs  -> failure x
  ClsExtDef id1 id2 fields3 fndefs4  -> failure x


transFnDef :: FnDef -> Result
transFnDef x = case x of
  FnDef type' id args block  -> failure x


transArg :: Arg -> Result
transArg x = case x of
  Arg type' id  -> failure x


transField :: Field -> Result
transField x = case x of
  Field type' id  -> failure x


transBlock :: Block -> Result
transBlock x = case x of
  Block stmts  -> failure x


transStmt :: Stmt -> Result
transStmt x = case x of
  Empty  -> failure x
  BStmt block  -> failure x
  Decl type' items  -> failure x
  Ass id expr  -> failure x
  Incr id  -> failure x
  Decr id  -> failure x
  Ret expr  -> failure x
  VRet  -> failure x
  Cond expr stmt  -> failure x
  CondElse expr stmt1 stmt2  -> failure x
  While expr stmt  -> failure x
  SExp expr  -> failure x


transItem :: Item -> Result
transItem x = case x of
  NoInit id  -> failure x
  Init id expr  -> failure x


transType :: Type -> Result
transType x = case x of
  Int  -> failure x
  Str  -> failure x
  Bool  -> failure x
  Void  -> failure x
  Fun type' types  -> failure x
  Cls id  -> failure x


transExpr :: Expr -> Result
transExpr x = case x of
  ELitInt n  -> failure x
  ELitTrue  -> failure x
  ELitFalse  -> failure x
  EApp id exprs  -> failure x
  EString str  -> failure x
  ENew id  -> failure x
  ENull type'  -> failure x
  EField id1 id2  -> failure x
  EMApp id1 id2 exprs3  -> failure x
  EVar id  -> failure x
  Neg expr  -> failure x
  Not expr  -> failure x
  EMul expr1 mulop2 expr3  -> failure x
  EAdd expr1 addop2 expr3  -> failure x
  ERel expr1 relop2 expr3  -> failure x
  EAnd expr1 expr2  -> failure x
  EOr expr1 expr2  -> failure x


transAddOp :: AddOp -> Result
transAddOp x = case x of
  Plus  -> failure x
  Minus  -> failure x


transMulOp :: MulOp -> Result
transMulOp x = case x of
  Times  -> failure x
  Div  -> failure x
  Mod  -> failure x


transRelOp :: RelOp -> Result
transRelOp x = case x of
  LTH  -> failure x
  LE  -> failure x
  GTH  -> failure x
  GE  -> failure x
  EQU  -> failure x
  NE  -> failure x



