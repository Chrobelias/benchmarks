(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= y (str.++ "28" x)))

(assert (str.in_re y (re.+ (re.+ (re.* (re.range "0" "9"))))))
(assert (str.in_re x (re.+ (re.++ (re.range "4" "7") (re.* (re.range "5" "7"))))))

(assert (< (+ (* (- 4) (str.len x)) (* 3 (str.len y)) (* 4 (str.to_int x))) 61))
(assert (= (+ (* (- 6) (str.len y)) (* 8 (str.to_int x))) 99))

(check-sat)