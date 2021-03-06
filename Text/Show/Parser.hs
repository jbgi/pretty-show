{-# OPTIONS_GHC -w #-}
{-# OPTIONS -XMagicHash -XBangPatterns -XTypeSynonymInstances -XFlexibleInstances -cpp #-}
#if __GLASGOW_HASKELL__ >= 710
{-# OPTIONS_GHC -XPartialTypeSignatures #-}
#endif
-- We use these options because Happy generates code with a lot of warnings.
{-# LANGUAGE Trustworthy #-}
module Text.Show.Parser (parseValue) where

import Text.Show.Value
import Language.Haskell.Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

newtype HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn4 :: (Value) -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn4 #-}
happyOut4 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> (Value)
happyOut4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut4 #-}
happyIn5 :: ((String,Value)) -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn5 #-}
happyOut5 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> ((String,Value))
happyOut5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut5 #-}
happyIn6 :: (Value) -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn6 #-}
happyOut6 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> (Value)
happyOut6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut6 #-}
happyIn7 :: (Value) -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> (Value)
happyOut7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: (String) -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> (String)
happyOut8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: (String) -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> (String)
happyOut9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: ((Name,Value)) -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> ((Name,Value))
happyOut10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: ([Value]) -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> ([Value])
happyOut11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: t12 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t12
happyOut12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: t13 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t13
happyOut13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: t14 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t14
happyOut14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyIn15 :: t15 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t15
happyOut15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyIn16 :: t16 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t16
happyOut16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut16 #-}
happyIn17 :: t17 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t17
happyOut17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut17 #-}
happyIn18 :: t18 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t18
happyOut18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut18 #-}
happyIn19 :: t19 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t19
happyOut19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut19 #-}
happyIn20 :: t20 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t20
happyOut20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut20 #-}
happyIn21 :: t21 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t21
happyOut21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: t22 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t22
happyOut22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: t23 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t23
happyOut23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: t24 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t24
happyOut24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: t25 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t25
happyOut25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: t26 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t26
happyOut26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyIn27 :: t27 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t27
happyOut27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut27 #-}
happyIn28 :: t28 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t28
happyOut28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut28 #-}
happyIn29 :: t29 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t29
happyOut29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyIn30 :: t30 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t30
happyOut30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut30 #-}
happyIn31 :: t31 -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyIn31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> t31
happyOut31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut31 #-}
happyInTok :: (PosToken) -> (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31)
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31) -> (PosToken)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyExpList :: HappyAddr
happyExpList = HappyA# "\x00\x00\x00\x00\x51\xf2\x33\x02\x00\x00\x00\x88\x92\x9f\x11\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x10\x98\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa2\xe4\x67\x04\x00\x00\x00\x10\x25\xff\x2f\x00\x00\x00\x80\x28\xf9\x19\x01\x00\x00\x00\x00\x00\x44\x00\x00\x00\x00\x20\x4a\x7e\x46\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x40\x94\xfc\x8c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x14\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x28\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x94\xfc\x8c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\xc0\x1c\x00\x00\x00\x00\x00\x00\x18\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x88\x92\x9f\x11\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x20\x4a\x7e\x46\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x44\xc9\xcf\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00"#

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseValue","value","infixelem","app_value","avalue","con","infixcon","field","tuple","list1__avalue__","list1__infixelem__","prefix__CONSYM__","prefix__QCONSYM__","prefix__QVARSYM__","prefix__VARSYM__","sep__field__','__","sep__value__','__","sep1__value__','__","list__snd__','__value____","rev_list1__avalue__","rev_list1__infixelem__","sep1__field__','__","snd__','__value__","list__snd__','__field____","list1__snd__','__value____","snd__','__field__","list1__snd__','__field____","rev_list1__snd__','__value____","rev_list1__snd__','__field____","'='","'('","')'","'{'","'}'","'['","']'","'<'","'>'","','","'-'","'%'","'`'","INT","FLOAT","STRING","CHAR","VARID","QVARID","VARSYM","QVARSYM","CONID","QCONID","CONSYM","QCONSYM","RESOP","RESID","%eof"]
        bit_start = st * 59
        bit_end = (st + 1) * 59
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..58]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x17\x00\x17\x00\xfd\xff\xb6\x00\x00\x00\x18\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x17\x00\xff\xff\x17\x00\x1a\x00\x17\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0f\x00\x17\x00\x00\x00\x03\x00\x1b\x00\x4e\x00\x30\x00\x00\x00\x2c\x00\x37\x00\x3c\x00\x45\x00\x4d\x00\x4f\x00\x00\x00\x3f\x00\x00\x00\x17\x00\x00\x00\xb6\x00\xed\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4c\x00\x54\x00\x00\x00\x00\x00\x52\x00\x5d\x00\x00\x00\x68\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x17\x00\x00\x00\x00\x00\x00\x00\x00\x00\x60\x00\x17\x00\x00\x00\x00\x00\x00\x00\x5f\x00\x00\x00\x00\x00\x17\x00\x00\x00\x00\x00\x00\x00\x00\x00\x63\x00\x61\x00\x00\x00\x00\x00\x00\x00\x00\x00\x66\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x64\x00\x75\x00\x00\x00\xa5\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xce\x00\x42\x00\x31\x00\x00\x00\xd2\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa9\x00\x00\x00\x00\x00\x00\x00\xf1\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xac\x00\x00\x00\xba\x00\x00\x00\x46\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x53\x00\x00\x00\x00\x00\x00\x00\x00\x00\x65\x00\x86\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x97\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5c\x00\x76\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyAdjustOffset :: Happy_GHC_Exts.Int# -> Happy_GHC_Exts.Int#
happyAdjustOffset off = off

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\x00\x00\x00\x00\xfd\xff\xcd\xff\xf5\xff\xfa\xff\xed\xff\xec\xff\xe8\xff\xe9\xff\xda\xff\xdc\xff\xd1\xff\x00\x00\x00\x00\xf4\xff\xf3\xff\xf2\xff\xf1\xff\xeb\xff\xea\xff\xef\xff\xee\xff\xe5\xff\x00\x00\x00\x00\xf0\xff\x00\x00\x00\x00\xce\xff\x00\x00\xd2\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xcc\xff\xd3\xff\xcb\xff\x00\x00\xfc\xff\xd9\xff\x00\x00\xe2\xff\xe1\xff\xe4\xff\xe3\xff\xde\xff\x00\x00\x00\x00\xca\xff\xfb\xff\xc6\xff\x00\x00\xd4\xff\x00\x00\xd7\xff\xd8\xff\xd6\xff\xd5\xff\xf7\xff\xf9\xff\x00\x00\xf8\xff\xd0\xff\xc2\xff\xcf\xff\xc5\xff\x00\x00\xe6\xff\xe7\xff\xfe\xff\xc8\xff\xc1\xff\xdb\xff\x00\x00\xf6\xff\xc9\xff\xc0\xff\xc7\xff\xc3\xff\x00\x00\xdf\xff\xe0\xff\xc4\xff\xbf\xff\xdd\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x02\x00\x11\x00\x16\x00\x17\x00\x06\x00\x15\x00\x08\x00\x17\x00\x0c\x00\x0b\x00\x1a\x00\x09\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x02\x00\x1b\x00\x0c\x00\x04\x00\x06\x00\x16\x00\x08\x00\x18\x00\x19\x00\x0b\x00\x1b\x00\x09\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x1c\x00\x12\x00\x16\x00\x17\x00\x03\x00\x16\x00\x00\x00\x1b\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x07\x00\x0c\x00\x08\x00\x03\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x03\x00\x0f\x00\x10\x00\x00\x00\x12\x00\x02\x00\x03\x00\x04\x00\x01\x00\x03\x00\x07\x00\x08\x00\x05\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x03\x00\x12\x00\x03\x00\x00\x00\x12\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x0d\x00\x0c\x00\x08\x00\x0a\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0d\x00\x05\x00\x10\x00\x00\x00\x12\x00\x02\x00\x03\x00\x04\x00\x01\x00\x0a\x00\x0c\x00\x08\x00\x0a\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0c\x00\x12\x00\x18\x00\x00\x00\x12\x00\x02\x00\x03\x00\x04\x00\x15\x00\xff\xff\x06\x00\x08\x00\xff\xff\x0a\x00\x0b\x00\x0c\x00\x0d\x00\xff\xff\xff\xff\xff\xff\x00\x00\x12\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x08\x00\xff\xff\x0a\x00\x0b\x00\x0c\x00\x0d\x00\xff\xff\xff\xff\xff\xff\x00\x00\x12\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x08\x00\xff\xff\x0a\x00\x0b\x00\x0c\x00\x0d\x00\xff\xff\x01\x00\xff\xff\xff\xff\x12\x00\x05\x00\x02\x00\x03\x00\x04\x00\x09\x00\xff\xff\xff\xff\x08\x00\x06\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\xff\xff\x13\x00\xff\xff\x0e\x00\x12\x00\x02\x00\x03\x00\x04\x00\xff\xff\x14\x00\xff\xff\x08\x00\x0d\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\xff\xff\xff\xff\x14\x00\x15\x00\x12\x00\xff\xff\x18\x00\x19\x00\x1a\x00\x03\x00\x04\x00\xff\xff\xff\xff\x03\x00\x04\x00\xff\xff\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x0d\x00\x43\x00\x34\x00\x35\x00\x0e\x00\x44\x00\x0f\x00\x45\x00\x1b\x00\x10\x00\x46\x00\x4a\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x24\x00\x25\x00\x17\x00\x18\x00\x26\x00\x27\x00\x0d\x00\x19\x00\x1b\x00\x29\x00\x0e\x00\x50\x00\x0f\x00\x51\x00\x52\x00\x10\x00\x53\x00\x49\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x1d\x00\x17\x00\x18\x00\x41\x00\x1e\x00\x1e\x00\x19\x00\x03\x00\x04\x00\x05\x00\x42\x00\x43\x00\x1b\x00\x06\x00\x40\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x3f\x00\x1f\x00\x20\x00\x21\x00\x0b\x00\x03\x00\x04\x00\x05\x00\x35\x00\x3e\x00\x22\x00\x06\x00\x2a\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x3d\x00\x3b\x00\x3c\x00\x1e\x00\x0b\x00\x03\x00\x04\x00\x05\x00\x48\x00\x57\x00\x1b\x00\x06\x00\x55\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x56\x00\x50\x00\x4d\x00\x19\x00\x0b\x00\x03\x00\x04\x00\x05\x00\x4f\x00\x48\x00\x1b\x00\x06\x00\x55\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x1b\x00\x3b\x00\x58\x00\x02\x00\x0b\x00\x03\x00\x04\x00\x05\x00\x4c\x00\x00\x00\x57\x00\x06\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x4b\x00\x0b\x00\x03\x00\x04\x00\x05\x00\x00\x00\x00\x00\x00\x00\x06\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x59\x00\x0b\x00\x03\x00\x04\x00\x05\x00\x00\x00\x00\x00\x00\x00\x06\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x29\x00\x00\x00\x00\x00\x0b\x00\x2a\x00\x4a\x00\x04\x00\x05\x00\x2b\x00\x00\x00\x00\x00\x06\x00\x37\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x2c\x00\x00\x00\x38\x00\x0b\x00\x36\x00\x04\x00\x05\x00\x00\x00\x39\x00\x00\x00\x06\x00\x2e\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x2f\x00\x30\x00\x0b\x00\x00\x00\x31\x00\x32\x00\x33\x00\x27\x00\x05\x00\x00\x00\x00\x00\x1b\x00\x05\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (1, 64) [
	(1 , happyReduce_1),
	(2 , happyReduce_2),
	(3 , happyReduce_3),
	(4 , happyReduce_4),
	(5 , happyReduce_5),
	(6 , happyReduce_6),
	(7 , happyReduce_7),
	(8 , happyReduce_8),
	(9 , happyReduce_9),
	(10 , happyReduce_10),
	(11 , happyReduce_11),
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58),
	(59 , happyReduce_59),
	(60 , happyReduce_60),
	(61 , happyReduce_61),
	(62 , happyReduce_62),
	(63 , happyReduce_63),
	(64 , happyReduce_64)
	]

happy_n_terms = 29 :: Int
happy_n_nonterms = 28 :: Int

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_1 = happySpecReduce_3  0# happyReduction_1
happyReduction_1 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut4 happy_x_1 of { happy_var_1 -> 
	case happyOut6 happy_x_3 of { happy_var_3 -> 
	happyIn4
		 (Ratio happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_2 = happySpecReduce_1  0# happyReduction_2
happyReduction_2 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn4
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_3 = happySpecReduce_2  0# happyReduction_3
happyReduction_3 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	case happyOut13 happy_x_2 of { happy_var_2 -> 
	happyIn4
		 (mkInfixCons happy_var_1 happy_var_2
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_4 = happySpecReduce_2  1# happyReduction_4
happyReduction_4 happy_x_2
	happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	case happyOut6 happy_x_2 of { happy_var_2 -> 
	happyIn5
		 ((happy_var_1,happy_var_2)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_5 = happySpecReduce_1  2# happyReduction_5
happyReduction_5 happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	happyIn6
		 (mkValue happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_6 = happySpecReduce_3  3# happyReduction_6
happyReduction_6 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut4 happy_x_2 of { happy_var_2 -> 
	happyIn7
		 (happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_7 = happySpecReduce_3  3# happyReduction_7
happyReduction_7 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_2 of { happy_var_2 -> 
	happyIn7
		 (List happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_8 = happySpecReduce_3  3# happyReduction_8
happyReduction_8 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn7
		 (Tuple happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_9 = happyReduce 4# 3# happyReduction_9
happyReduction_9 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOut18 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Rec happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_10 = happySpecReduce_1  3# happyReduction_10
happyReduction_10 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn7
		 (Con happy_var_1 []
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_11 = happySpecReduce_1  3# happyReduction_11
happyReduction_11 happy_x_1
	 =  case happyOutTok happy_x_1 of { ((IntLit,   (_,happy_var_1))) -> 
	happyIn7
		 (Integer happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_12 = happySpecReduce_1  3# happyReduction_12
happyReduction_12 happy_x_1
	 =  case happyOutTok happy_x_1 of { ((FloatLit, (_,happy_var_1))) -> 
	happyIn7
		 (Float happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_13 = happySpecReduce_1  3# happyReduction_13
happyReduction_13 happy_x_1
	 =  case happyOutTok happy_x_1 of { ((StringLit, (_,happy_var_1))) -> 
	happyIn7
		 (String happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_14 = happySpecReduce_1  3# happyReduction_14
happyReduction_14 happy_x_1
	 =  case happyOutTok happy_x_1 of { ((CharLit,  (_,happy_var_1))) -> 
	happyIn7
		 (Char happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_15 = happySpecReduce_2  3# happyReduction_15
happyReduction_15 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn7
		 (Neg happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_16 = happySpecReduce_1  4# happyReduction_16
happyReduction_16 happy_x_1
	 =  case happyOutTok happy_x_1 of { ((Conid,    (_,happy_var_1))) -> 
	happyIn8
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_17 = happySpecReduce_1  4# happyReduction_17
happyReduction_17 happy_x_1
	 =  case happyOutTok happy_x_1 of { ((Qconid,   (_,happy_var_1))) -> 
	happyIn8
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_18 = happySpecReduce_1  4# happyReduction_18
happyReduction_18 happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	happyIn8
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_19 = happySpecReduce_1  4# happyReduction_19
happyReduction_19 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn8
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_20 = happySpecReduce_1  4# happyReduction_20
happyReduction_20 happy_x_1
	 =  case happyOutTok happy_x_1 of { ((Varid,    (_,happy_var_1))) -> 
	happyIn8
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_21 = happySpecReduce_1  4# happyReduction_21
happyReduction_21 happy_x_1
	 =  case happyOutTok happy_x_1 of { ((Qvarid,   (_,happy_var_1))) -> 
	happyIn8
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_22 = happySpecReduce_1  4# happyReduction_22
happyReduction_22 happy_x_1
	 =  case happyOut17 happy_x_1 of { happy_var_1 -> 
	happyIn8
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_23 = happySpecReduce_1  4# happyReduction_23
happyReduction_23 happy_x_1
	 =  case happyOut16 happy_x_1 of { happy_var_1 -> 
	happyIn8
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_24 = happySpecReduce_3  4# happyReduction_24
happyReduction_24 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_2 of { ((Varid,    (_,happy_var_2))) -> 
	happyIn8
		 ("<" ++ happy_var_2 ++ ">"
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_25 = happySpecReduce_3  4# happyReduction_25
happyReduction_25 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_2 of { ((Conid,    (_,happy_var_2))) -> 
	happyIn8
		 ("<" ++ happy_var_2 ++ ">"
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_26 = happySpecReduce_1  4# happyReduction_26
happyReduction_26 happy_x_1
	 =  case happyOutTok happy_x_1 of { ((Reservedid, (_,happy_var_1))) -> 
	happyIn8
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_27 = happySpecReduce_1  5# happyReduction_27
happyReduction_27 happy_x_1
	 =  case happyOutTok happy_x_1 of { ((Consym,   (_,happy_var_1))) -> 
	happyIn9
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_28 = happySpecReduce_1  5# happyReduction_28
happyReduction_28 happy_x_1
	 =  case happyOutTok happy_x_1 of { ((Qconsym,  (_,happy_var_1))) -> 
	happyIn9
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_29 = happySpecReduce_1  5# happyReduction_29
happyReduction_29 happy_x_1
	 =  case happyOutTok happy_x_1 of { ((Varsym,   (_,happy_var_1))) -> 
	happyIn9
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_30 = happySpecReduce_1  5# happyReduction_30
happyReduction_30 happy_x_1
	 =  case happyOutTok happy_x_1 of { ((Qvarsym,  (_,happy_var_1))) -> 
	happyIn9
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_31 = happySpecReduce_3  5# happyReduction_31
happyReduction_31 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_2 of { ((Conid,    (_,happy_var_2))) -> 
	happyIn9
		 (backtick happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_32 = happySpecReduce_3  5# happyReduction_32
happyReduction_32 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_2 of { ((Qconid,   (_,happy_var_2))) -> 
	happyIn9
		 (backtick happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_33 = happySpecReduce_1  5# happyReduction_33
happyReduction_33 happy_x_1
	 =  case happyOutTok happy_x_1 of { ((Reservedop, (_,happy_var_1))) -> 
	happyIn9
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_34 = happySpecReduce_3  6# happyReduction_34
happyReduction_34 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { ((Varid,    (_,happy_var_1))) -> 
	case happyOut4 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 ((happy_var_1,happy_var_3)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_35 = happySpecReduce_0  7# happyReduction_35
happyReduction_35  =  happyIn11
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_36 = happySpecReduce_3  7# happyReduction_36
happyReduction_36 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut4 happy_x_1 of { happy_var_1 -> 
	case happyOut20 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (happy_var_1 : happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_37 = happySpecReduce_1  8# happyReduction_37
happyReduction_37 happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	happyIn12
		 (reverse happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_38 = happySpecReduce_1  9# happyReduction_38
happyReduction_38 happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 (reverse happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_39 = happySpecReduce_3  10# happyReduction_39
happyReduction_39 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_2 of { ((Consym,   (_,happy_var_2))) -> 
	happyIn14
		 ("(" ++ happy_var_2 ++ ")"
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_40 = happySpecReduce_3  11# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_2 of { ((Qconsym,  (_,happy_var_2))) -> 
	happyIn15
		 ("(" ++ happy_var_2 ++ ")"
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_41 = happySpecReduce_3  12# happyReduction_41
happyReduction_41 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_2 of { ((Qvarsym,  (_,happy_var_2))) -> 
	happyIn16
		 ("(" ++ happy_var_2 ++ ")"
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_42 = happySpecReduce_3  13# happyReduction_42
happyReduction_42 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_2 of { ((Varsym,   (_,happy_var_2))) -> 
	happyIn17
		 ("(" ++ happy_var_2 ++ ")"
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_43 = happySpecReduce_1  14# happyReduction_43
happyReduction_43 happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	happyIn18
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_44 = happySpecReduce_0  14# happyReduction_44
happyReduction_44  =  happyIn18
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_45 = happySpecReduce_1  15# happyReduction_45
happyReduction_45 happy_x_1
	 =  case happyOut20 happy_x_1 of { happy_var_1 -> 
	happyIn19
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_46 = happySpecReduce_0  15# happyReduction_46
happyReduction_46  =  happyIn19
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_47 = happySpecReduce_2  16# happyReduction_47
happyReduction_47 happy_x_2
	happy_x_1
	 =  case happyOut4 happy_x_1 of { happy_var_1 -> 
	case happyOut21 happy_x_2 of { happy_var_2 -> 
	happyIn20
		 (happy_var_1 : happy_var_2
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_48 = happySpecReduce_1  17# happyReduction_48
happyReduction_48 happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	happyIn21
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_49 = happySpecReduce_0  17# happyReduction_49
happyReduction_49  =  happyIn21
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_50 = happySpecReduce_1  18# happyReduction_50
happyReduction_50 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn22
		 ([happy_var_1]
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_51 = happySpecReduce_2  18# happyReduction_51
happyReduction_51 happy_x_2
	happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn22
		 (happy_var_2 : happy_var_1
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_52 = happySpecReduce_1  19# happyReduction_52
happyReduction_52 happy_x_1
	 =  case happyOut5 happy_x_1 of { happy_var_1 -> 
	happyIn23
		 ([happy_var_1]
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_53 = happySpecReduce_2  19# happyReduction_53
happyReduction_53 happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	case happyOut5 happy_x_2 of { happy_var_2 -> 
	happyIn23
		 (happy_var_2 : happy_var_1
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_54 = happySpecReduce_2  20# happyReduction_54
happyReduction_54 happy_x_2
	happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	case happyOut26 happy_x_2 of { happy_var_2 -> 
	happyIn24
		 (happy_var_1 : happy_var_2
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_55 = happySpecReduce_2  21# happyReduction_55
happyReduction_55 happy_x_2
	happy_x_1
	 =  case happyOut4 happy_x_2 of { happy_var_2 -> 
	happyIn25
		 (happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_56 = happySpecReduce_1  22# happyReduction_56
happyReduction_56 happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	happyIn26
		 (happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_57 = happySpecReduce_0  22# happyReduction_57
happyReduction_57  =  happyIn26
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_58 = happySpecReduce_1  23# happyReduction_58
happyReduction_58 happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	happyIn27
		 (reverse happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_59 = happySpecReduce_2  24# happyReduction_59
happyReduction_59 happy_x_2
	happy_x_1
	 =  case happyOut10 happy_x_2 of { happy_var_2 -> 
	happyIn28
		 (happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_60 = happySpecReduce_1  25# happyReduction_60
happyReduction_60 happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	happyIn29
		 (reverse happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_61 = happySpecReduce_1  26# happyReduction_61
happyReduction_61 happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	happyIn30
		 ([happy_var_1]
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_62 = happySpecReduce_2  26# happyReduction_62
happyReduction_62 happy_x_2
	happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { happy_var_2 -> 
	happyIn30
		 (happy_var_2 : happy_var_1
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_63 = happySpecReduce_1  27# happyReduction_63
happyReduction_63 happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn31
		 ([happy_var_1]
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_64 = happySpecReduce_2  27# happyReduction_64
happyReduction_64 happy_x_2
	happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	case happyOut28 happy_x_2 of { happy_var_2 -> 
	happyIn31
		 (happy_var_2 : happy_var_1
	)}}

happyNewToken action sts stk [] =
	happyDoAction 28# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	(Reservedop, (_,"=")) -> cont 1#;
	(Special, (_,"(")) -> cont 2#;
	(Special, (_,")")) -> cont 3#;
	(Special, (_,"{")) -> cont 4#;
	(Special, (_,"}")) -> cont 5#;
	(Special, (_,"[")) -> cont 6#;
	(Special, (_,"]")) -> cont 7#;
	(Varsym, (_,"<")) -> cont 8#;
	(Varsym, (_,">")) -> cont 9#;
	(Special, (_,",")) -> cont 10#;
	(Varsym,  (_,"-")) -> cont 11#;
	(Varsym,  (_,"%")) -> cont 12#;
	(Special, (_,"`")) -> cont 13#;
	(IntLit,   (_,happy_dollar_dollar)) -> cont 14#;
	(FloatLit, (_,happy_dollar_dollar)) -> cont 15#;
	(StringLit, (_,happy_dollar_dollar)) -> cont 16#;
	(CharLit,  (_,happy_dollar_dollar)) -> cont 17#;
	(Varid,    (_,happy_dollar_dollar)) -> cont 18#;
	(Qvarid,   (_,happy_dollar_dollar)) -> cont 19#;
	(Varsym,   (_,happy_dollar_dollar)) -> cont 20#;
	(Qvarsym,  (_,happy_dollar_dollar)) -> cont 21#;
	(Conid,    (_,happy_dollar_dollar)) -> cont 22#;
	(Qconid,   (_,happy_dollar_dollar)) -> cont 23#;
	(Consym,   (_,happy_dollar_dollar)) -> cont 24#;
	(Qconsym,  (_,happy_dollar_dollar)) -> cont 25#;
	(Reservedop, (_,happy_dollar_dollar)) -> cont 26#;
	(Reservedid, (_,happy_dollar_dollar)) -> cont 27#;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 28# tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => Maybe a -> (a -> Maybe b) -> Maybe b
happyThen = ((>>=))
happyReturn :: () => a -> Maybe a
happyReturn = (return)
happyThen1 m k tks = ((>>=)) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Maybe a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(PosToken)], [String]) -> Maybe a
happyError' = (\(tokens, _) -> happyError tokens)
parseValue tks = happySomeParser where
 happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut4 x))

happySeq = happyDontSeq


backtick :: String -> String
backtick s = "`" ++ s ++ "`"

happyError :: [PosToken] -> Maybe a
happyError ((_,(p,_)) : _) = Nothing -- error ("Parser error at: " ++ show p)
happyError []              = Nothing -- error ("Parser error at EOF")

mkValue :: [Value] -> Value
mkValue [v]                 = v
mkValue (Con "" [] : vs)    = mkValue vs
mkValue (Con x as : vs)     = Con x (as ++ vs)
mkValue (InfixCons v xs : Neg x : more)
                            = mkValue (mkInfixCons v (xs ++ [("-",x)]) : more)
mkValue (v : Neg x : more)  = mkValue (mkInfixCons v [("-",x)] : more)
mkValue vs                  = mkFakeCon vs

{- When we see a sequence of thins:
1 2 3 + x + y
we parse it as:
1 2 (3 + x + y)

we do this to make parsing of dates to look a little nicer:

(2018-08-05) 09 : 31

ends up as

(2018-08-05) (09:31)
-}

mkInfixCons :: Value -> [(Name,Value)] -> Value
mkInfixCons (Con "" as) bs | not (null as) =
  mkFakeCon (init as ++ [mkInfixConsLast (last as) bs])
mkInfixCons a bs = mkInfixConsLast a bs

mkInfixConsLast :: Value -> [(Name,Value)] -> Value
mkInfixConsLast v [] = v
mkInfixConsLast v vs = mk [] vs
  where
  inf xs = InfixCons v (reverse xs)

  mk ps [(x,Con "" (a:as))] = mkFakeCon (inf ((x,a):ps) : as)
  mk ps [x]                 = inf (x:ps)
  mk ps (x : xs)            = mk (x : ps) xs
  mk _ []                   = error "impossible"

mkFakeCon :: [Value] -> Value
mkFakeCon vs = Con "" (concatMap expand vs)
  where expand (Con "" vs) = vs
        expand v           = [v]
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 10 "<command-line>" #-}
# 1 "/nix/store/q2q1sg5sljia8sihhwcpbxir70yw33bw-glibc-2.27-dev/include/stdc-predef.h" 1 3 4

# 17 "/nix/store/q2q1sg5sljia8sihhwcpbxir70yw33bw-glibc-2.27-dev/include/stdc-predef.h" 3 4














































{-# LINE 10 "<command-line>" #-}
{-# LINE 1 "/nix/store/14wg82xp853ql5dfycr49a94pjk4idv3-ghc-8.6.3/lib/ghc-8.6.3/include/ghcversion.h" #-}















{-# LINE 10 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 













-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif
{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is 0#, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}


          case action of
                0#           -> {- nothing -}
                                     happyFail (happyExpListPerState ((Happy_GHC_Exts.I# (st)) :: Int)) i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}

                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}


                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = happyAdjustOffset (indexShortOffAddr happyActOffsets st)
         off_i  = (off Happy_GHC_Exts.+#  i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else False
         action
          | check     = indexShortOffAddr happyTable off_i
          | otherwise = indexShortOffAddr happyDefActions st




indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#




{-# INLINE happyLt #-}
happyLt x y = LT(x,y)


readArrayBit arr bit =
    Bits.testBit (Happy_GHC_Exts.I# (indexShortOffAddr arr ((unbox_int bit) `Happy_GHC_Exts.iShiftRA#` 4#))) (bit `mod` 16)
  where unbox_int (Happy_GHC_Exts.I# x) = x






data HappyAddr = HappyA# Happy_GHC_Exts.Addr#


-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

{-# LINE 180 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st1)
             off_i = (off Happy_GHC_Exts.+#  nt)
             new_state = indexShortOffAddr happyTable off_i




          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st)
         off_i = (off Happy_GHC_Exts.+#  nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ( (Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
