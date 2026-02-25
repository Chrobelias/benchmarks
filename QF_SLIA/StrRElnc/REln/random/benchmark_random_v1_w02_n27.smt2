(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (re.range "3" "5")) (re.union (str.to_re "441") (str.to_re "78")))))

(assert (> (* 4 (str.to_int x)) 51))
(assert (= (* (- 3) (str.len x)) 47))

(check-sat)