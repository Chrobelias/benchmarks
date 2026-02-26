(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z x) (str.++ "87" y)))

(assert (str.in_re y (re.++ (re.* (re.* (re.range "4" "7"))) (str.to_re "266"))))
(assert (str.in_re x (re.union (str.to_re "6") (re.+ (re.+ (re.range "2" "7"))))))
(assert (str.in_re z (re.union (re.* (re.range "2" "9")) (re.++ (re.* (str.to_re "523")) (str.to_re "7")))))

(assert (>= (+ (* (- 8) (str.to_int x)) (* 2 (str.to_int y)) (* (- 6) (str.to_int z))) 12))
(assert (< (+ (str.to_int x) (* (- 7) (str.to_int y)) (* 4 (str.to_int z))) 91))
(assert (>= (+ (* (- 3) (str.len x)) (* (- 8) (str.len y)) (* 5 (str.len z))) 43))

(check-sat)