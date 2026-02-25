(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.range "0" "2") (re.+ (re.* (str.to_re "60"))))))

(assert (= (+ (* (- 10) (str.len x)) (str.to_int x)) 26))
(assert (> (* 2 (str.len x)) 10))

(check-sat)