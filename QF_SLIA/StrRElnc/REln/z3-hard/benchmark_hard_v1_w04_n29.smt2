(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (re.range "7" "9") (re.+ (re.+ (re.range "0" "8")))) (str.to_re "850"))))

(assert (< (* (- 9) (str.to_int x)) 54))
(assert (<= (* 8 (str.to_int x)) 47))
(assert (>= (+ (* 2 (str.len x)) (* 6 (str.to_int x))) 40))

(check-sat)