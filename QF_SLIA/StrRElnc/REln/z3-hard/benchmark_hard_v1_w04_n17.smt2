(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.range "3" "6") (re.+ (re.range "7" "9")))))

(assert (> (* 4 (str.to_int x)) 89))
(assert (> (+ (str.len x) (* (- 3) (str.to_int x))) 13))
(assert (>= (* 4 (str.to_int x)) 40))

(check-sat)