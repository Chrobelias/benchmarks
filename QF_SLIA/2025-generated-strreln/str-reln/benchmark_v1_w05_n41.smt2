(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.range "6" "8") (re.++ (re.+ (re.range "6" "8")) (str.to_re "60")))))

(assert (>= (* 7 (str.to_int x)) 40))
(assert (<= (+ (* (- 7) (str.len x)) (str.to_int x)) 11))
(assert (< (* (- 9) (str.len x)) 49))
(assert (<= (* (- 2) (str.to_int x)) 79))

(check-sat)