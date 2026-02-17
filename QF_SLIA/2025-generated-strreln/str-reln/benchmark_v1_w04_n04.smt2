(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.++ (str.to_re "0") (re.union (str.to_re "6") (re.+ (re.range "3" "5")))) (re.range "5" "9"))))

(assert (> (* 8 (str.len x)) 12))
(assert (>= (* 4 (str.to_int x)) 58))
(assert (< (+ (* (- 7) (str.len x)) (* 9 (str.to_int x))) 56))

(check-sat)