(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (str.in_re z (re.* (re.+ (re.++ (re.+ (str.to_re "965")) (re.range "2" "6"))))))
(assert (str.in_re y (re.union (re.union (str.to_re "38") (re.* (re.range "2" "5"))) (str.to_re "0"))))
(assert (str.in_re x (re.union (re.++ (re.union (str.to_re "694") (re.* (str.to_re "730"))) (str.to_re "842")) (str.to_re "785"))))

(assert (>= (+ (* 7 (str.to_int x)) (* (- 3) (str.to_int y)) (* 9 (str.to_int z))) 16))
(assert (< (+ (* (- 7) (str.len x)) (* 7 (str.len y)) (* (- 4) (str.len z))) 53))

(check-sat)