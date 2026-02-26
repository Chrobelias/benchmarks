(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= z (str.++ "80" x y "83" "44" a)))

(assert (str.in_re z (re.+ (re.* (re.range "0" "8")))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "43") (re.union (str.to_re "9") (re.range "6" "8"))))))
(assert (str.in_re x (re.++ (re.+ (re.union (str.to_re "53") (re.+ (str.to_re "28")))) (str.to_re "466"))))
(assert (str.in_re a (re.union (str.to_re "612") (re.++ (re.range "6" "8") (re.* (str.to_re "675"))))))

(assert (<= (+ (* (- 9) (str.len x)) (* (- 7) (str.len y)) (* 10 (str.len z)) (* (- 5) (str.len a))) 47))
(assert (= (+ (* 4 (str.to_int x)) (* 6 (str.to_int y)) (* (- 5) (str.to_int z)) (* (- 4) (str.to_int a))) 82))

(check-sat)