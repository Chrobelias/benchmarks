(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (re.+ (re.union (str.to_re "68") (re.* (str.to_re "7")))))))
(assert (str.in_re y (re.union (re.* (str.to_re "32")) (re.* (re.+ (str.to_re "7"))))))
(assert (str.in_re z (re.++ (re.* (re.range "6" "9")) (re.+ (str.to_re "862")))))

(assert (> (+ (* 4 (str.len y)) (* 9 (str.len z)) (* (- 10) (str.to_int x))) 11))
(assert (<= (+ (* (- 3) (str.len x)) (* 7 (str.len y)) (* 4 (str.len z))) 21))
(assert (>= (+ (* 4 (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 4) (str.to_int z))) 9))
(assert (>= (+ (* (- 6) (str.len z)) (* 5 (str.to_int x))) 68))

(check-sat)