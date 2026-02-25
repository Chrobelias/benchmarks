(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "1") (re.+ (re.+ (str.to_re "841"))))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "5")) (re.union (re.range "6" "8") (re.+ (str.to_re "8"))))))

(assert (> (+ (* 8 (str.len y)) (* (- 4) (str.to_int y))) 72))
(assert (> (+ (* 3 (str.len x)) (* 3 (str.len y))) 77))
(assert (>= (+ (str.to_int x) (* (- 3) (str.to_int y))) 2))

(check-sat)