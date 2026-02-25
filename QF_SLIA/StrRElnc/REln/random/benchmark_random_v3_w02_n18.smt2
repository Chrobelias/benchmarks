(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.++ (str.to_re "133") (re.union (str.to_re "696") (re.+ (str.to_re "735"))))))
(assert (str.in_re x (re.++ (str.to_re "924") (re.++ (re.++ (re.range "3" "7") (re.+ (str.to_re "5"))) (str.to_re "6")))))
(assert (str.in_re y (re.union (re.++ (re.range "3" "8") (re.+ (str.to_re "851"))) (str.to_re "307"))))

(assert (< (+ (* 5 (str.len y)) (* (- 4) (str.len z))) 15))
(assert (< (+ (* 2 (str.to_int x)) (* 6 (str.to_int y)) (* 7 (str.to_int z))) 66))

(check-sat)