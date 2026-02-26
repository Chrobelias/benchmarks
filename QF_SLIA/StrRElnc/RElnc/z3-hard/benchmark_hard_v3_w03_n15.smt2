(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z y) (str.++ "44" x)))

(assert (str.in_re x (re.++ (re.union (str.to_re "776") (str.to_re "41")) (re.* (str.to_re "37")))))
(assert (str.in_re y (re.* (re.union (str.to_re "69") (re.* (re.range "7" "9"))))))
(assert (str.in_re z (re.+ (re.union (re.range "5" "7") (re.range "1" "9")))))

(assert (< (+ (* 6 (str.to_int x)) (* (- 8) (str.to_int y)) (* 4 (str.to_int z))) 4))
(assert (> (+ (* 6 (str.len x)) (* 4 (str.len y)) (* (- 10) (str.len z))) 56))
(assert (< (+ (* (- 7) (str.len x)) (* 6 (str.len y)) (* (- 8) (str.len z))) 9))

(check-sat)