(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ x "52" y)))

(assert (str.in_re y (re.+ (re.+ (str.to_re "3")))))
(assert (str.in_re x (re.union (re.union (str.to_re "9") (re.* (re.range "6" "9"))) (str.to_re "48"))))
(assert (str.in_re z (re.+ (re.union (re.union (re.range "2" "7") (str.to_re "6")) (re.range "0" "6")))))

(assert (>= (+ (* (- 9) (str.len x)) (* (- 9) (str.len z)) (* 9 (str.to_int y)) (* (- 7) (str.to_int z))) 22))

(check-sat)