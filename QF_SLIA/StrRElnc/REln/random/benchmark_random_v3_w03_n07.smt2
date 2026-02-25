(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.++ (re.+ (str.to_re "67")) (str.to_re "78")) (re.* (str.to_re "748")))))
(assert (str.in_re z (re.* (re.range "1" "5"))))
(assert (str.in_re y (re.++ (re.* (re.range "1" "8")) (re.* (re.* (str.to_re "257"))))))

(assert (>= (+ (* (- 2) (str.to_int y)) (* (- 8) (str.to_int z))) 66))
(assert (= (+ (* (- 6) (str.len x)) (* (- 7) (str.len y)) (* (- 7) (str.len z))) 49))
(assert (<= (+ (* 6 (str.len y)) (* 9 (str.len z))) 94))

(check-sat)