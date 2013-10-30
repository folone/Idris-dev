module Prelude.Bifunctor

import Builtins

class Bifunctor (f : Type -> Type -> Type) where
  bimap : (a -> b) -> (c -> d) -> f a c -> f b d

first : Bifunctor f => (a -> b) -> f a c -> f b c
first f = bimap f id

second : Bifunctor f => (b -> c) -> f a b -> f a c
second = bimap id
