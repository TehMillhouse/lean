section
parameter P : match unit.star with
| unit.star := true
end

include P

example : false :=
begin
  dsimp [_match_1] at P,
  guard_hyp P := true,
  sorry
end
end

section
parameter P : match unit.star with
| unit.star := true
end

include P

example : false :=
begin
  dsimp [_match_1] at P,
  guard_hyp P := true,
  sorry
end
end


section
parameter P : match unit.star with
| unit.star := true
end

parameter Q : match unit.star with
| unit.star := true
end

section
include P

example : false :=
begin
  dsimp [_match_1] at P,
  guard_hyp P := true,
  sorry
end
end

section
include Q
example : false :=
begin
  dsimp [_match_2] at Q,
  guard_hyp Q := true,
  sorry
end
end

end
