(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "21")) (re.* (re.range "1" "5")))))

(assert (<= (* (- 5) (str.len x)) 8))
(assert (>= (+ (* 7 (str.len x)) (* (- 9) (str.to_int x))) 52))
(assert (<= (* (- 7) (str.to_int x)) 84))

(check-sat)