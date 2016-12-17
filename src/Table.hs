module Table where

import System.IO
import Data.Csv
import Data.Text


data Value = BoolValue Bool | IntValue Int | RealValue Double | StringValue Text

newtype ColName = ColName Text

type Row = [(ColName, Value)]
type Table = [Row]

inferType :: String -> Value
inferType "True" = BoolValue True
inferType "False" = BoolValue False
--etc

--TODO: use utf8 to convert ByteString -> Text 