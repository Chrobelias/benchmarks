(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.range "1" "4") (re.+ (str.to_re "325")))))

(assert (>= (* (- 10) (str.len x)) 45))
(assert (>= (+ (* (- 9) (str.len x)) (* 8 (str.to_int x))) 74))

(check-sat)