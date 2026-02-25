(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "706") (re.range "0" "7")))))

(assert (> (* (- 5) (str.to_int x)) 85))
(assert (> (* 6 (str.len x)) 88))
(assert (<= (+ (* (- 4) (str.len x)) (* (- 8) (str.to_int x))) 47))

(check-sat)