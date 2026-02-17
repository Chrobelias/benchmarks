(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.++ (re.union (str.to_re "52") (re.+ (str.to_re "83"))) (str.to_re "14")) (re.range "7" "9"))))

(assert (< (* (- 4) (str.len x)) 1))
(assert (= (+ (* (- 10) (str.len x)) (* 7 (str.to_int x))) 47))

(check-sat)