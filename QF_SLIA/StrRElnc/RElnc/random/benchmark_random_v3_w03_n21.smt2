(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ "36" y z)))

(assert (str.in_re y (re.union (re.* (str.to_re "1")) (re.union (str.to_re "39") (re.+ (str.to_re "5"))))))
(assert (str.in_re x (re.* (re.* (re.* (re.range "0" "7"))))))
(assert (str.in_re z (re.union (re.++ (re.* (str.to_re "4")) (str.to_re "417")) (re.+ (str.to_re "80")))))

(assert (>= (+ (* 7 (str.len x)) (* 8 (str.len y)) (* 10 (str.len z))) 56))
(assert (< (+ (* (- 4) (str.to_int x)) (* (- 4) (str.to_int y)) (* (- 7) (str.to_int z))) 71))
(assert (>= (+ (* (- 9) (str.to_int x)) (* (- 9) (str.to_int y)) (* 6 (str.to_int z))) 87))

(check-sat)