example (n : nat) (m : nat) : n > m → m < n :=
begin
  with_cases { revert m, induction n },
  case nat.zero : m' { show 0 > m' → m' < 0, sorry },
  case nat.succ : n' ih m' { show nat.succ n' > m' → m' < nat.succ n', sorry }
end

example (n : nat) (m : nat) : n > m → m < n :=
begin
  with_cases { revert m, induction n },
  case nat.zero { show ∀ m, 0 > m → m < 0, sorry },
  case nat.succ { show ∀ m, nat.succ n_n > m → m < nat.succ n_n, sorry }
end

example (n : nat) (m : nat) : n > m → m < n :=
begin
  with_cases { induction n generalizing m },
  case nat.zero { show 0 > m → m < 0, sorry },
  case nat.succ { show nat.succ n_n > m → m < nat.succ n_n, sorry }
end

example (n : nat) (m : nat) : n > m → m < n :=
begin
  with_cases { induction n generalizing m },
  case nat.zero : m' { show 0 > m' → m' < 0, sorry },
  case nat.succ : n' ih m' { show nat.succ n' > m' → m' < nat.succ n', sorry }
end

example (n : nat) (m : nat) : n > m → m < n :=
begin
  with_cases { induction n generalizing m },
  case nat.zero : m' { show 0 > m' → m' < 0, sorry },
  case nat.succ : n' ih { show nat.succ n' > m → m < nat.succ n', sorry }
end

example (n : nat) (m : nat) : n > m → m < n :=
begin
  with_cases { induction n generalizing m },
  case nat.zero { show 0 > m → m < 0, sorry },
  case nat.succ : n' ih { show nat.succ n' > m → m < nat.succ n', sorry }
end
