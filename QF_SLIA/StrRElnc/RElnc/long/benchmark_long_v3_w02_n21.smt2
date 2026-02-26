(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (= z (str.++ x y "54")))

(assert (str.in_re x (re.union (str.to_re "7") (re.++ (re.+ (str.to_re "352")) (re.* (str.to_re "49"))))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "8") (re.+ (str.to_re "46"))))))
(assert (str.in_re z (re.union (re.* (re.range "0" "9")) (re.range "3" "8"))))

(assert (= (+ (* 10 (str.len x)) (* 10 (str.len y)) (* 8 (str.len z))) 98))
(assert (< (+ (* (- 2) (str.to_int x)) (* 5 (str.to_int z))) 94))

(check-sat)