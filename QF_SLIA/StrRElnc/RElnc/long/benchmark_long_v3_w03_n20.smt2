(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))

(assert (= z (str.++ y "23" "82" x)))

(assert (str.in_re y (re.++ (str.to_re "92") (re.union (re.range "1" "7") (re.union (str.to_re "77") (re.* (str.to_re "47")))))))
(assert (str.in_re z (re.union (re.* (re.+ (re.range "5" "8"))) (re.* (re.range "2" "9")))))
(assert (str.in_re x (re.++ (str.to_re "8") (re.++ (re.* (str.to_re "794")) (str.to_re "2")))))

(assert (< (+ (* 7 (str.to_int x)) (* 4 (str.to_int y)) (* (- 6) (str.to_int z))) 30))
(assert (= (+ (* (- 7) (str.len y)) (* (- 8) (str.len z))) 3))
(assert (>= (+ (* 8 (str.to_int x)) (* (- 4) (str.to_int y)) (* 9 (str.to_int z))) 89))

(check-sat)