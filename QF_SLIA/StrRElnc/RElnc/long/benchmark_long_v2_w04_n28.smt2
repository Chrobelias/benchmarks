(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= y (str.++ "52" x)))

(assert (str.in_re x (re.union (re.union (str.to_re "66") (re.* (str.to_re "679"))) (str.to_re "78"))))
(assert (str.in_re y (re.union (str.to_re "842") (re.+ (re.range "0" "8")))))

(assert (= (+ (* (- 6) (str.to_int x)) (str.to_int y)) 66))
(assert (< (+ (* (- 3) (str.len x)) (* 6 (str.len y))) 75))
(assert (> (+ (* (- 2) (str.len y)) (* 2 (str.to_int x)) (* (- 4) (str.to_int y))) 54))

(check-sat)